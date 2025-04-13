import { Outlet, redirect, useNavigate } from "react-router";

import { Button } from "~/components/ui/button";
import { Separator } from "~/components/ui/separator";

export default function Layout() {
  const navigate = useNavigate();
  return (
    <>
      <main className="relative">
        <div className="texture" />

        <div className="container mx-auto py-8 px-4 max-w-7xl">
          <div className="mb-8">
            <div className="flex items-center justify-between">
              <h1 className=" text-xl md:text-3xl font-serif font-bold text-foreground">
                RuleHub
              </h1>
              <div className="flex gap-2">
                <Button
                  onClick={() => navigate("/submit")}
                  className="shadow-primary"
                >
                  Submit New Rule
                </Button>
              </div>
            </div>
            <p className="text-muted-foreground mt-2">
              A platform for managing and sharing editor rules and
              configurations
            </p>
            <Separator className="mt-4" />
          </div>

          <Outlet />
        </div>
      </main>
    </>
  );
}
