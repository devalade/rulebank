import { useNavigate, useSubmit } from "react-router";
import { useInView } from "react-intersection-observer";
import { Settings2, Search, Tag, XIcon } from "lucide-react";
import { useEffect, useState, type FormEventHandler } from "react";
import { or, like, sql } from "drizzle-orm";
import { Form, useNavigation } from "react-router";
import { Button } from "~/components/ui/button";
import { Card } from "~/components/ui/card";
import { Input } from "~/components/ui/input";
import { serverAuth } from "~/auth/auth.server";
import type { Route } from "./+types/home";
import { db } from "~/database/db.server";
import { rule, user } from "~/database/schema";
import { RuleCard } from "~/components/rule-card";
import { Spinner } from "~/components/spinner";
import { debounce } from "~/lib/utils";
import { Badge } from "~/components/ui/badge";

export const meta: Route.MetaFunction = () => [{ title: "RuleHub | Home" }];

export async function loader({ context, request }: Route.LoaderArgs) {
  try {
    const auth = serverAuth(context.cloudflare.env);
    const session = await auth.api.getSession({
      headers: request.headers,
    });

    const url = new URL(request.url);
    const searchQuery = url.searchParams.get("q") || "";
    const page = parseInt(url.searchParams.get("page") || "1", 10);
    const tagFilter = url.searchParams.get("tag") || "";
    const pageSize = 9 * 2; // Number of rules per page (3x3 grid)

    const whereConditions = [];
    if (searchQuery) {
      whereConditions.push(
        or(
          like(rule.title, `%${searchQuery.toLowerCase()}%`),
          like(rule.description, `%${searchQuery.toLowerCase()}%`),
        ),
      );
    }
    if (tagFilter) {
      whereConditions.push(like(rule.tags, `%${tagFilter}%`));
    }
    const whereQuery = whereConditions.length
      ? whereConditions.reduce((acc, curr) => sql`${acc} AND ${curr}`)
      : undefined;

    const rules = await db
      .select({
        id: rule.id,
        title: rule.title,
        description: rule.description,
        githubUrl: rule.githubUrl,
        tags: rule.tags,
        createdAt: rule.createdAt,
      })
      .from(rule)
      .where(whereQuery)
      .orderBy(rule.createdAt, "desc")
      .limit(pageSize)
      .offset((page - 1) * pageSize);

    const totalRules = await db
      .select({ count: sql<number>`count(*)` })
      .from(rule)
      .where(whereQuery)
      .then((result) => result[0]?.count || 0);

    const tagsResult = await db
      .select({ tags: rule.tags })
      .from(rule)
      .then((rows) =>
        Array.from(
          new Set(
            rows
              .flatMap((row) => (row.tags ? row.tags.split(",") : []))
              .map((tag) => tag.trim())
              .filter((tag) => tag),
          ),
        ).sort(),
      );

    return {
      rules: rules,
      tags: tagsResult,
      filters: {
        q: searchQuery,
        tag: tagFilter,
        page,
        hasMore: rules.length === pageSize && totalRules > page * pageSize,
      },
      session,
    };
  } catch (error) {
    console.error("Error fetching rules:", error);
    return {
      rules: [],
      tags: [],
      filters: {
        q: "",
        tag: "",
        page: 1,
        hasMore: false,
      },
      session: null,
    };
  }
}

export async function action({ request, context }: Route.ActionArgs) {
  const auth = serverAuth(context.cloudflare.env);
  const session = await auth.api.getSession({
    headers: request.headers,
  });

  return { session };
}

export default function Home({ loaderData }: Route.ComponentProps) {
  const {
    rules: initialRules,
    tags,
    filters: { q, tag: activeTag, page, hasMore },
    session,
  } = loaderData;
  const [ref, inView] = useInView();
  const [rules, setRules] = useState(initialRules);
  const navigate = useNavigate();
  const navigation = useNavigation();
  const submit = useSubmit();

  const debouncedSubmit = debounce(
    (form: HTMLFormElement, options: { replace: boolean }) => {
      submit(form, options);
    },
    500,
  );

  useEffect(() => {
    setRules(initialRules);
  }, [q, activeTag, initialRules]);

  useEffect(() => {
    const searchField = document.getElementById("q");
    if (searchField instanceof HTMLInputElement) {
      searchField.value = q || "";
    }
  }, [q]);

  function onQueryChange(e: FormEventHandler<HTMLFormElement>) {
    debouncedSubmit(e.currentTarget, {
      replace: q === null,
    });
  }

  function onLoadMore() {
    const nextPage = page + 1;
    const url = new URL(window.location.href);
    url.searchParams.set("page", nextPage.toString());
    if (q) url.searchParams.set("q", q);
    if (activeTag) url.searchParams.set("tag", activeTag);
    navigate(url.pathname + url.search, { replace: false });
  }

  function onTagClick(tag: string) {
    const url = new URL(window.location.href);
    url.searchParams.set("page", "1");
    if (q) url.searchParams.set("q", q);
    if (tag === activeTag) {
      url.searchParams.delete("tag");
    } else {
      url.searchParams.set("tag", tag);
    }
    navigate(url.pathname + url.search, { replace: false });
  }

  // Append new rules when loader returns new data
  useEffect(() => {
    if (page > 1) {
      setRules((prev) => [...prev, ...initialRules]);
    }
  }, [initialRules]);

  useEffect(() => {
    if (inView && hasMore && navigation.state !== "loading") {
      onLoadMore();
    }
  }, [inView, hasMore, navigation.state]);

  return (
    <div>
      {/* Search and filter section */}
      <Form id="search-form" onChange={onQueryChange}>
        <div className="flex flex-col sm:flex-row gap-4 mb-6">
          <div className="relative flex-1">
            {navigation.state === "loading" ? (
              <Spinner className="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
            ) : (
              <Search className="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
            )}
            <Input
              id="q"
              name="q"
              defaultValue={q || ""}
              type="search"
              placeholder="Search rules..."
              className="pl-8"
            />
          </div>
        </div>
      </Form>

      {/* Tags list */}
      {tags.length > 0 && (
        <div className="mb-6 flex flex-wrap gap-2">
          {tags.map((tag) => (
            <Badge
              key={tag}
              variant={tag === activeTag ? "default" : "secondary"}
              className="cursor-pointer"
              onClick={() => onTagClick(tag)}
            >
              {tag}
              {tag === activeTag && (
                <XIcon className="ml-1 h-3 w-3" aria-hidden="true" />
              )}
            </Badge>
          ))}
        </div>
      )}

      {/* Rules list */}
      <div className="space-y-4">
        {rules.length === 0 ? (
          <Card className="p-6 text-center">
            <h3 className="text-lg font-medium mb-2">No rules found</h3>
            <p className="text-muted-foreground mb-4">
              {q
                ? "Try adjusting your filters or search terms"
                : "Be the first to submit a rule!"}
            </p>
            {session && (
              <Button onClick={() => navigate("/submit")}>
                Submit New Rule
              </Button>
            )}
          </Card>
        ) : (
          <div className="grid md:grid-cols-2 xl:grid-cols-3 gap-4">
            {rules.map(
              ({ id, title, description, createdAt, githubUrl, tags }) => (
                <RuleCard
                  key={id}
                  title={title}
                  description={description}
                  githubUrl={githubUrl}
                  tags={tags || ""}
                  createdAt={createdAt}
                />
              ),
            )}
          </div>
        )}
      </div>
      {hasMore && <div ref={ref} className="h-px" />}
      {/* Load more button */}
    </div>
  );
}
