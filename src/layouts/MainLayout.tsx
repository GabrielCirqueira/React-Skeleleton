import { Box } from "@shadcn/layout";
import { cn } from "@shadcn/lib/utils";
import * as React from "react";
import { Outlet } from "react-router-dom";

export interface MainLayoutProps {
  className?: string;
}

export const MainLayout = React.forwardRef<HTMLDivElement, MainLayoutProps>(
  ({ className }, ref) => {
    return (
      <Box
        ref={ref}
        className={cn(
          "min-h-screen",
          "flex flex-col",
          "bg-gradient-to-br from-background-50 via-background-100 to-brand-50",
          "antialiased",
          className
        )}
      >
        <Box as="main" className="flex-1 flex flex-col">
          <Outlet />
        </Box>
      </Box>
    );
  }
);

MainLayout.displayName = "MainLayout";
