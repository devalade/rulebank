import { Link, useNavigate } from "react-router";
import { formatDistanceToNow } from "date-fns";
import { ChevronUp, MessageSquare } from "lucide-react";
import { desc, eq } from "drizzle-orm";

import { Button } from "~/components/ui/button";
import { Card } from "~/components/ui/card";
import { Separator } from "~/components/ui/separator";
import { Badge } from "~/components/ui/badge";
import { serverAuth } from "~/auth/auth.server";
import type { Route } from "./+types/home";
import { db } from "~/database/db.server";
import { rule, user } from "~/database/schema";

export const meta: Route.MetaFunction = () => [{ title: "RuleBank | Home" }];

export async function loader({ context, request }: Route.LoaderArgs) {
  try {
    // Get the auth session
    const auth = serverAuth(context.cloudflare.env);
    const session = await auth.api.getSession({
      headers: request.headers,
    });

    console.log({ session });

    // Fetch top 5 rules ordered by votes (highest first)
    const rules = await db.select({
      id: rule.id,
      title: rule.title,
      description: rule.description,
      votes: rule.votes,
      commentsCount: rule.commentsCount,
      createdAt: rule.createdAt,
      userId: rule.userId,
      user: {
        name: user.name,
      },
    })
    .from(rule)
    .leftJoin(user, eq(user.id, rule.userId))
    .orderBy(desc(rule.votes))
    .limit(20);

    return { rules, session };
  } catch (error) {
    console.error("Error fetching rules:", error);
    // If there's an error or no rules yet, fall back to mock data
    return { rules: [], session: null };
  }
}

export default function Home({ loaderData: { rules, session } }: Route.ComponentProps) {
  const navigate = useNavigate();

  console.log({ session });
  return (
    <div className="container mx-auto py-8 px-4 max-w-5xl">
      {/* Header section */}
      <div className="mb-8">
        <div className="flex items-center justify-between">
          <h1 className="text-3xl font-serif font-bold text-foreground">RuleBank</h1>
          <div className="flex gap-2">
            <Button
            hidden={session === null}
              variant="outline"
              onClick={() => navigate("/rules")}
            >
              Your Rules
            </Button>
            <Button
              hidden={session !== null}
              onClick={() => session ? navigate("/submit") : navigate("/auth/sign-in")}
              className="shadow-primary"
            >
              Submit New Rule
            </Button>
            <Button hidden={session === null} onClick={() => navigate("/auth/sign-out")}>Sign Out</Button>
          </div>
        </div>
        <p className="text-muted-foreground mt-2">A collection of community-curated coding rules and best practices</p>
        <Separator className="mt-4" />
      </div>

      {/* Rules list */}
      <div className="space-y-4">
        {rules.map((rule, index) => (
          <Card key={rule.id} className="p-0 overflow-hidden border-2 shadow-sm hover:shadow-primary transition-shadow">
            <div className="flex">
              {/* Vote column */}
              <div className="flex flex-col items-center justify-center p-4 bg-muted w-16 border-r-2">
                <Button variant="ghost" size="sm" className="px-2 py-1">
                  <ChevronUp className="h-5 w-5" />
                </Button>
                <span className="font-bold text-lg">{rule.votes}</span>
              </div>

              {/* Content column */}
              <div className="flex-1 p-4">
                <div className="flex flex-col">
                  {/* Rule number and title */}
                  <div className="flex items-baseline gap-2">
                    <span className="text-muted-foreground font-mono">{index + 1}.</span>
                    <Link
                      to={`/rules/${rule.id}`}
                      className="text-lg font-serif font-bold hover:text-primary transition-colors"
                    >
                      {rule.title}
                    </Link>
                  </div>

                  {/* Description */}
                  <p className="mt-2 text-muted-foreground">{rule.description}</p>

                  {/* Meta information */}
                  <div className="flex items-center gap-2 mt-3 text-xs text-muted-foreground">
                    <span>by <Link to={`/users/${rule.user?.name}`} className="text-foreground hover:text-primary">{rule.user?.name || "Anonymous"}</Link></span>
                    <span>•</span>
                    <span>{formatDistanceToNow(new Date(rule.createdAt))} ago</span>
                    <span>•</span>
                    <Link to={`/rules/${rule.id}#comments`} className="flex items-center gap-1 hover:text-primary">
                      <MessageSquare className="h-3 w-3" />
                      <span>{rule.commentsCount} comments</span>
                    </Link>

                    {/* Tags would go here if we had them */}
                    <div className="ml-auto">
                      <Badge variant="outline" className="ml-2">TypeScript</Badge>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </Card>
        ))}
      </div>

        {/* Load more  on scroll */}
    </div>
  );
}
