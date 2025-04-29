/// <reference types="vite/client" />

interface ImportMetaEnv {
  readonly ENVIRONMENT: "development" | "production";
  readonly VITE_TURNSTILE_SITE_KEY: string;
  readonly TURNSTILE_SECRET_KEY: string;
  // more env variables...
}

interface ImportMeta {
  readonly env: ImportMetaEnv;
}
