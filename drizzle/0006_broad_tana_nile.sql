PRAGMA foreign_keys=OFF;--> statement-breakpoint
CREATE TABLE `__new_rule` (
	`id` text PRIMARY KEY NOT NULL,
	`title` text NOT NULL,
	`description` text NOT NULL,
	`githubUrl` text NOT NULL,
	`createdAt` integer DEFAULT (unixepoch()) NOT NULL,
	`updatedAt` integer DEFAULT (unixepoch()) NOT NULL
);
--> statement-breakpoint
INSERT INTO `__new_rule`("id", "title", "description", "githubUrl", "createdAt", "updatedAt") SELECT "id", "title", "description", "githubUrl", "createdAt", "updatedAt" FROM `rule`;--> statement-breakpoint
DROP TABLE `rule`;--> statement-breakpoint
ALTER TABLE `__new_rule` RENAME TO `rule`;--> statement-breakpoint
PRAGMA foreign_keys=ON;--> statement-breakpoint
CREATE UNIQUE INDEX `rule_githubUrl_unique` ON `rule` (`githubUrl`);--> statement-breakpoint
CREATE INDEX `rule_github_url_idx` ON `rule` (`githubUrl`);