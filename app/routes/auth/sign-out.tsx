import { redirect } from "react-router";
import { toast } from "sonner";
import { signOut } from "~/auth/auth.client";

export async function loader() {
  return redirect("/auth/sign-in");
}

export async function clientAction() {
  try {
    await signOut();
    toast.success("Successfully signed out");
    return redirect("/auth/sign-in");
  } catch (error) {
    console.error("Sign-out error:", error);
    toast.error("An error occurred while signing out");
    return redirect("/auth/sign-in");
  }
}
