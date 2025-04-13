CREATE TABLE `comment` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`content` text NOT NULL,
	`ruleId` integer NOT NULL,
	`userId` text NOT NULL,
	`votes` integer DEFAULT 0 NOT NULL,
	`createdAt` integer DEFAULT (unixepoch()) NOT NULL,
	`updatedAt` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`ruleId`) REFERENCES `rule`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`userId`) REFERENCES `user`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE INDEX `comment_rule_id_idx` ON `comment` (`ruleId`);--> statement-breakpoint
CREATE INDEX `comment_user_id_idx` ON `comment` (`userId`);--> statement-breakpoint
CREATE TABLE `rule_tag` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`ruleId` integer NOT NULL,
	`tagId` integer NOT NULL,
	`createdAt` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`ruleId`) REFERENCES `rule`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`tagId`) REFERENCES `tag`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE INDEX `rule_tag_rule_id_idx` ON `rule_tag` (`ruleId`);--> statement-breakpoint
CREATE INDEX `rule_tag_tag_id_idx` ON `rule_tag` (`tagId`);--> statement-breakpoint
CREATE INDEX `rule_tag_unique_idx` ON `rule_tag` (`ruleId`,`tagId`);--> statement-breakpoint
CREATE TABLE `rule_version` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`ruleId` integer NOT NULL,
	`title` text NOT NULL,
	`description` text NOT NULL,
	`content` text NOT NULL,
	`editorType` text,
	`versionNumber` integer NOT NULL,
	`createdAt` integer DEFAULT (unixepoch()) NOT NULL,
	`userId` text NOT NULL,
	FOREIGN KEY (`ruleId`) REFERENCES `rule`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`userId`) REFERENCES `user`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE INDEX `rule_version_rule_id_idx` ON `rule_version` (`ruleId`);--> statement-breakpoint
CREATE INDEX `rule_version_user_id_idx` ON `rule_version` (`userId`);--> statement-breakpoint
CREATE TABLE `tag` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`name` text NOT NULL,
	`createdAt` integer DEFAULT (unixepoch()) NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `tag_name_unique` ON `tag` (`name`);--> statement-breakpoint
ALTER TABLE `rule` ADD `status` text DEFAULT 'draft' NOT NULL;--> statement-breakpoint
ALTER TABLE `rule` ADD `editorType` text;--> statement-breakpoint
CREATE INDEX `rule_status_idx` ON `rule` (`status`);--> statement-breakpoint
CREATE INDEX `rule_editor_type_idx` ON `rule` (`editorType`);