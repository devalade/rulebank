import {
  data,
  isRouteErrorResponse,
  Links,
  Meta,
  Outlet,
  Scripts,
  ScrollRestoration,
  useLoaderData,
  type LoaderFunctionArgs,
} from "react-router";
import { Toaster, toast as notify } from "sonner";

import type { Route } from "./+types/root";
import { ProgressBar } from "./components/progress-bar";
import {
  ThemeSwitcherSafeHTML,
  ThemeSwitcherScript,
} from "./components/theme-switcher";
import { useNonce } from "./hooks/use-nonce";
import "./styles/app.css";
import { useEffect } from "react";
import { getToast } from "remix-toast";

export const links: Route.LinksFunction = () => [
  { rel: "preconnect", href: "https://fonts.googleapis.com" },
  {
    rel: "preconnect",
    href: "https://fonts.gstatic.com",
    crossOrigin: "anonymous",
  },
  {
    rel: "stylesheet",
    href: "https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap",
  },
];

export const loader = async ({ request }: LoaderFunctionArgs) => {
  const { toast, headers } = await getToast(request);
  return data({ toast }, { headers });
};

export function Layout({ children }: { children: React.ReactNode }) {
  const nonce = useNonce();

  return (
    <ThemeSwitcherSafeHTML
      lang="en"
      className="touch-manipulation overflow-x-hidden"
    >
      <head>
        <meta charSet="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <Meta />
        <Links />
        <ThemeSwitcherScript nonce={nonce} />
      </head>
      <body className="relative">
        <div className="texture" />
        <ProgressBar />
        {children}
        <ScrollRestoration nonce={nonce} />
        <Scripts nonce={nonce} />
        <Toaster position="top-center" />
      </body>
    </ThemeSwitcherSafeHTML>
  );
}

export default function App() {
  const { toast } = useLoaderData<typeof loader>();

  useEffect(() => {
    if (toast?.type === "error") {
      notify.error(toast.message);
    }
    if (toast?.type === "success") {
      notify.success(toast.message);
    }
  }, [toast]);
  return <Outlet />;
}

export function ErrorBoundary({ error }: Route.ErrorBoundaryProps) {
  let message = "Oops!";
  let details = "An unexpected error occurred.";
  let stack: string | undefined;

  if (isRouteErrorResponse(error)) {
    message = error.status === 404 ? "404" : "Error";
    details =
      error.status === 404
        ? "The requested page could not be found."
        : error.statusText || details;
  } else if (import.meta.env.DEV && error && error instanceof Error) {
    details = error.message;
    stack = error.stack;
  }

  return (
    <main className="container mx-auto space-y-4 p-4 pt-16">
      <div className="space-y-2">
        <h1 className="text-2xl font-semibold">{message}</h1>
        <p>{details}</p>
      </div>
      {stack && (
        <pre className="bg-destructive/5 text-destructive w-full overflow-x-auto rounded-lg p-4 text-sm">
          <code>{stack}</code>
        </pre>
      )}
    </main>
  );
}
