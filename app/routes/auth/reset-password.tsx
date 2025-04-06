import { Form, Link, redirect } from "react-router";
import { toast } from "sonner";

import { resetPassword } from "~/auth/auth.client";
import { Spinner } from "~/components/spinner";
import { Button } from "~/components/ui/button";
import { Input } from "~/components/ui/input";
import { Label } from "~/components/ui/label";
import { useIsPending } from "~/hooks/use-is-pending";
import type { Route } from "./+types/reset-password";

export const meta: Route.MetaFunction = () => [{ title: "Password Reset" }];

export async function loader({ request }: Route.LoaderArgs) {
  const url = new URL(request.url);
  const token = url.searchParams.get("token");
  if (!token) {
    toast.error("Missing reset token. Please request a new password reset link.");
    return redirect("/auth/forget-password");
  }
  return null;
}

export async function clientAction({ request }: Route.ClientActionArgs) {
  const formData = await request.formData();
  const password = formData.get("password") as string;
  const confirmPassword = formData.get("confirmPassword") as string;

  try {
    if (password.length < 8 || password.length > 32) {
      return toast.error("Password must be between 8 and 32 characters long.");
    }

    if (password !== confirmPassword) {
      return toast.error("New password and confirm password do not match.");
    }

    const { error } = await resetPassword({
      newPassword: password.trim(),
    });

    if (error) {
      return toast.error(error.message || "Password reset failed. Please try again.");
    }

    toast.success("Password reset successfully! Please sign in with your new password.");
    return redirect("/auth/sign-in");
  } catch (error) {
    console.error("Reset password error:", error);
    return toast.error("An unexpected error occurred. Please try again later.");
  }
}

export default function ResetPassword() {
  const isPending = useIsPending({
    formMethod: "POST",
  });

  return (
    <div className="flex flex-col gap-6">
      <div className="flex flex-col items-center gap-2 text-center">
        <h1 className="text-2xl font-bold">Reset your password</h1>
        <p className="text-balance text-sm text-muted-foreground">
          Enter your new password below, minimum 8 characters, maximum 32
          characters.
        </p>
      </div>

      <Form method="post" className="grid gap-4">
        <div className="grid gap-2">
          <Label htmlFor="password">New Password</Label>
          <Input
            id="password"
            name="password"
            type="password"
            autoComplete="current-password"
            required
          />
        </div>
        <div className="grid gap-2">
          <Label htmlFor="confirmPassword">Confirm new password</Label>
          <Input
            id="confirmPassword"
            name="confirmPassword"
            type="password"
            autoComplete="confirmPassword"
            required
          />
        </div>
        <Button type="submit" className="w-full" disabled={isPending}>
          {isPending ? (
            <>
              <Spinner /> Resetting password...
            </>
          ) : (
            "Reset Password"
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
