import { Form, Link } from "react-router";
import { toast } from "sonner";

import { forgetPassword } from "~/auth/auth.client";
import { Spinner } from "~/components/spinner";
import { Button } from "~/components/ui/button";
import { Input } from "~/components/ui/input";
import { useIsPending } from "~/hooks/use-is-pending";
import { isValidEmailFormat } from "~/lib/utils";
import type { Route } from "./+types/forget-password";

export const meta: Route.MetaFunction = () => [
  { title: "Forgot your password?" },
];

export async function clientAction({ request }: Route.ClientActionArgs) {
  const formData = await request.formData();
  const email = formData.get("email") as string;

  try {
    if (!isValidEmailFormat(email)) {
      return toast.error("Invalid email format. Please enter a valid email address.");
    }

    const { error } = await forgetPassword({
      email: email.trim().toLowerCase(),
      redirectTo: "/auth/reset-password",
    });

    if (error) {
      return toast.error(error.message || "Failed to send reset link. Please try again.");
    }
    
    return toast.success("Password reset link sent to your email. Please check your inbox.");
  } catch (error) {
    console.error("Forget password error:", error);
    return toast.error("An unexpected error occurred. Please try again later.");
  }
}

export default function ForgetPassword() {
  const isPending = useIsPending({
    formMethod: "POST",
  });

  return (
    <div className="flex flex-col gap-6">
      <div className="flex flex-col items-center gap-2 text-center">
        <h1 className="text-2xl font-bold">Forgot your password?</h1>
        <p className="text-balance text-sm text-muted-foreground">
          Enter your email address and we will send you a password reset link.
        </p>
      </div>

      <Form method="post" className="grid gap-4">
        <Input
          id="email"
          name="email"
          type="email"
          placeholder="Enter your email"
          autoComplete="email"
          required
        />
        <Button type="submit" className="w-full" disabled={isPending}>
          {isPending ? (
            <>
              <Spinner /> Sending reset link...
            </>
          ) : (
            "Send reset link"
          )}
        </Button>
      </Form>

      <div className="text-center text-sm">
        <Link to="/auth/sign-in" className="text-primary hover:underline">
          Back to sign in
        </Link>
      </div>
    </div>
  );
}
