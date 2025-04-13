import {
  type RouteConfig,
  index,
  layout,
  prefix,
  route,
} from "@react-router/dev/routes";

export default [
  // User routes
  layout("routes/layout.tsx", [
    index("routes/home.tsx"),
    route("submit", "routes/submit.tsx"),
  ]),
  // Better Auth
  ...prefix("auth", [
    layout("routes/auth/layout.tsx", [
      route("sign-in", "routes/auth/sign-in.tsx"),
      route("sign-up", "routes/auth/sign-up.tsx"),
      route("sign-out", "routes/auth/sign-out.tsx"),
    ]),
  ]),

  // Better Auth API
  route("api/auth/error", "routes/auth/better-error.tsx"),
  route("api/auth/*", "routes/auth/better.tsx"),

] satisfies RouteConfig;
