import { redirect } from "react-router";

import { serverAuth } from "~/auth/auth.server";
import type { Route } from "./+types/layout";

export async function loader({ request, context }: Route.LoaderArgs) {
  const auth = serverAuth(context.cloudflare.env);
  const authSession = await auth.api.getSession({
    headers: request.headers,
  });

  if (!authSession) {
    throw redirect("/auth/sign-in");
  }

  return { authSession };
}

export default function Layout({
  loaderData: { authSession },
}: Route.ComponentProps) {
  return (
    <>
      <div className="texture" />
      <main className="">
        <Outlet />
      </main>
    </>
  );
}
