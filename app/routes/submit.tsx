import { Textarea } from "components/ui/textarea";
import { Form, redirect } from "react-router";
import { Input } from "~/components/ui/input";
import { Label } from "~/components/ui/label";
import { Button } from "~/components/ui/button";
import { Badge } from "~/components/ui/badge";
import type { Route } from "./+types/submit";
import React, { useState } from "react";
import { z } from "zod";
import { db } from "~/database/db.server";
import { rule } from "~/database/schema";
import { eq } from "drizzle-orm";
import { dataWithError, redirectWithSuccess } from "remix-toast";
import {
  Tooltip,
  TooltipContent,
  TooltipProvider,
  TooltipTrigger,
} from "components/ui/tooltip";
import { useNavigation } from "react-router";
import Turnstile, { useTurnstile } from "react-turnstile";

const schema = z.object({
  title: z
    .string()
    .min(2, "Title must be between 2 and 100 characters.")
    .max(100, "Title must be between 2 and 100 characters."),
  githubUrl: z.string().url("Provide a valid GitHub URL.").min(2).max(100),
  description: z
    .string()
    .min(2, "Description must be between 2 and 1000 characters.")
    .max(1000, "Description must be between 2 and 1000 characters."),
  tags: z
    .string()
    .min(2, "Provide at least one tag.")
    .max(400, "Too many tags."),
  turnstileToken: z.string().min(1, "Turnstile token is required."),
});

async function verifyTurnstileToken(token: string, secretKey: string) {
  try {
    const response = await fetch(
      "https://challenges.cloudflare.com/turnstile/v0/siteverify",
      {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          secret: secretKey,
          response: token,
        }),
      },
    );
    const data = (await response.json()) as { success: boolean };
    return data.success === true;
  } catch (error) {
    console.error("Turnstile verification error:", error);
    return false;
  }
}

async function createRule(
  data: z.infer<typeof schema>,
  turnstileSecretKey: string,
) {
  try {
    const validatedData = schema.parse(data);
    const isValidToken = await verifyTurnstileToken(
      validatedData.turnstileToken,
      turnstileSecretKey,
    );

    if (!isValidToken) {
      return {
        success: false,
        error: "Turnstile verification failed.",
        data: null,
      };
    }

    if (validatedData.githubUrl) {
      const [existingRule] = await db
        .select()
        .from(rule)
        .where(eq(rule.githubUrl, validatedData.githubUrl))
        .limit(1);
      if (existingRule) {
        return {
          success: false,
          error: "A rule with this GitHub URL already exists.",
          data: null,
        };
      }
    }

    const [result] = await db
      .insert(rule)
      .values({
        id: crypto.randomUUID(),
        title: validatedData.title,
        githubUrl: validatedData.githubUrl,
        description: validatedData.description,
        tags: validatedData.tags,
      })
      .returning();

    return { success: true, error: null, data: result };
  } catch (error) {
    console.error("Create rule error:", error);
    return {
      success: false,
      error:
        error instanceof z.ZodError
          ? error.errors[0]?.message
          : "Failed to create rule",
    };
  }
}

export async function action({ request, context }: Route.ActionArgs) {
  const turnstileSecretKey = context.cloudflare.env.TURNSTILE_SECRET_KEY;
  try {
    const formData = await request.formData();
    const data = Object.fromEntries(formData) as z.infer<typeof schema>;
    const result = await createRule(data, turnstileSecretKey);
    if (result.success) {
      return redirectWithSuccess(
        "/?q=" + encodeURIComponent(data.title),
        "Rule created successfully!",
      );
    }

    return dataWithError(data, result.error || "Invalid input.");
  } catch (error) {
    console.error("Action error:", error);
    return dataWithError(null, "Server error occurred.");
  }
}
export default function Submit() {
  const [tag, setTag] = useState<string>("");
  const [tagList, setTagList] = useState<string[]>([]);
  const [turnstileToken, setTurnstileToken] = useState<string | null>(null);
  const navigation = useNavigation();

  function onChange(e: React.ChangeEvent<HTMLInputElement>) {
    setTag(e.target.value);
  }

  function append() {
    setTagList((prev) => [...prev, tag]);
    setTag("");
  }

  function remove(index: number) {
    setTagList((prev: string[]) => {
      const newList = [...prev];
      newList.splice(index, 1);
      return newList;
    });
  }

  function onKeyDown(e: React.KeyboardEvent<HTMLInputElement>) {
    if (e.key === "Enter") {
      e.preventDefault();
      append();
    }
  }

  return (
    <div className="max-w-3xl w-full mx-auto">
      <Form id="submit" method="post">
        <div className="space-y-4">
          <div>
            <Label>Title</Label>
            <Input id="title" name="title" />
          </div>
          <div>
            <Label>GitHub Link</Label>
            <Input id="githubUrl" name="githubUrl" />
          </div>
          <div>
            <Label>Description</Label>
            <Textarea id="description" name="description" />
          </div>
          <div>
            <Label>
              Tags
              <TooltipProvider>
                <Tooltip>
                  <TooltipTrigger asChild>
                    <Button
                      variant="ghost"
                      size="sm"
                      className="!p-0.5  rounded-full aspect-square"
                    >
                      ?
                    </Button>
                  </TooltipTrigger>
                  <TooltipContent>
                    <p>Press Enter to add a tag</p>
                  </TooltipContent>
                </Tooltip>
              </TooltipProvider>
            </Label>
            <Input
              value={tag}
              onChange={onChange}
              onKeyDown={onKeyDown}
              placeholder="Eg: React Router v7, NextJS, Laravel, TailwindCSS..."
            />
            <div className="flex gap-x-1 mt-2">
              {tagList.map((t, index) => (
                <Badge key={t + String(index)} variant="outline">
                  {t}{" "}
                  <button type="button" onClick={() => remove(index)}>
                    X
                  </button>
                </Badge>
              ))}
            </div>
            <input hidden id="tags" name="tags" value={tagList.join(",")} />
          </div>
          <div>
            <Label>Verification</Label>
            <div className="mt-2">
              <Turnstile
                sitekey={"0x4AAAAAABLNEJ3KovLoBqrT"}
                onSuccess={(token) => setTurnstileToken(token)}
                onError={() => setTurnstileToken(null)}
              />
            </div>
          </div>
          <input
            type="hidden"
            name="turnstileToken"
            defaultValue={turnstileToken || ""}
          />
        </div>
        <div className="mt-4 flex gap-x-2 justify-end">
          <Button type="button" variant="outline">
            Cancel
          </Button>
          <Button type="submit" disabled={navigation.state === "submitting"}>
            {navigation.state === "submitting" ? "Submitting..." : "Submit"}
          </Button>
        </div>
      </Form>
    </div>
  );
}
