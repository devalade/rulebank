DROP TABLE `comment`;--> statement-breakpoint
DROP TABLE `rule_tag`;--> statement-breakpoint
DROP TABLE `rule_version`;--> statement-breakpoint
DROP TABLE `tag`;--> statement-breakpoint
DROP TABLE `todo`;--> statement-breakpoint
DROP TABLE `user_vote`;--> statement-breakpoint
DROP INDEX `rule_editor_type_idx`;--> statement-breakpoint

-- First, drop all the unnecessary columns
ALTER TABLE `rule` DROP COLUMN `content`;--> statement-breakpoint
ALTER TABLE `rule` DROP COLUMN `votes`;--> statement-breakpoint
ALTER TABLE `rule` DROP COLUMN `commentsCount`;--> statement-breakpoint
ALTER TABLE `rule` DROP COLUMN `editorType`;--> statement-breakpoint

-- Create a temporary table with the new schema
CREATE TABLE `rule_new` (
  `id` integer PRIMARY KEY AUTOINCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `githubUrl` text NOT NULL,
  `userId` text NOT NULL REFERENCES `user`(`id`) ON DELETE CASCADE,
  `status` text NOT NULL DEFAULT 'draft',
  `createdAt` integer NOT NULL DEFAULT (unixepoch()),
  `updatedAt` integer NOT NULL DEFAULT (unixepoch())
);--> statement-breakpoint

-- Copy existing data with a unique githubUrl for each row
INSERT INTO `rule_new` (`id`, `title`, `description`, `githubUrl`, `userId`, `status`, `createdAt`, `updatedAt`)
SELECT `id`, `title`, `description`, 'https://github.com/placeholder/' || `id`, `userId`, `status`, `createdAt`, `updatedAt`
FROM `rule`;--> statement-breakpoint

-- Drop the old table
DROP TABLE `rule`;--> statement-breakpoint

-- Rename the new table
ALTER TABLE `rule_new` RENAME TO `rule`;--> statement-breakpoint

-- Create the unique index and regular index for githubUrl
CREATE UNIQUE INDEX `rule_githubUrl_unique` ON `rule` (`githubUrl`);--> statement-breakpoint
CREATE INDEX `rule_github_url_idx` ON `rule` (`githubUrl`);--> statement-breakpoint
CREATE INDEX `rule_userId_idx` ON `rule` (`userId`);--> statement-breakpoint
CREATE INDEX `rule_status_idx` ON `rule` (`status`);