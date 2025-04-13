CREATE TABLE `user_vote` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`userId` text NOT NULL,
	`ruleId` integer NOT NULL,
	`createdAt` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`userId`) REFERENCES `user`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`ruleId`) REFERENCES `rule`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE INDEX `user_vote_user_rule_idx` ON `user_vote` (`userId`,`ruleId`);--> statement-breakpoint
CREATE INDEX `user_vote_rule_idx` ON `user_vote` (`ruleId`);