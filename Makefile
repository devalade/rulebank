# Makefile for seeding Cloudflare D1 database with cursor rules
# Created: 2025-04-29

# Database name
DB_NAME = DB

# SQL files
RULES_NEW_SEEDER = seed-01.sql
RULES_DIR_SEEDER_PART1 = seed-02.sql
RULES_DIR_SEEDER_PART2 = seed-03.sql
RULES_DIR_SEEDER_PART3 = seed-04.sql
RULES_DIR_SEEDER_PART4 = seed-05.sql

# Default target
.PHONY: all
all: seed-rules-new seed-rules-dir

# Seed rules-new directory
.PHONY: seed-rules-new
seed-rules-new:
	@echo "Seeding rules from rules-new directory..."
	npx wrangler d1 execute $(DB_NAME) --remote --file=$(RULES_NEW_SEEDER)
	@echo "Completed seeding rules-new directory."

# Seed rules directory (all parts)
.PHONY: seed-rules-dir
seed-rules-dir: seed-rules-dir-part1 seed-rules-dir-part2 seed-rules-dir-part3 seed-rules-dir-part4
	@echo "Completed seeding all rules from rules directory."

# Seed rules directory (part 1)
.PHONY: seed-rules-dir-part1
seed-rules-dir-part1:
	@echo "Seeding rules from rules directory (part 1)..."
	npx wrangler d1 execute $(DB_NAME) --remote --file=$(RULES_DIR_SEEDER_PART1)
	@echo "Completed seeding rules directory (part 1)."

# Seed rules directory (part 2)
.PHONY: seed-rules-dir-part2
seed-rules-dir-part2:
	@echo "Seeding rules from rules directory (part 2)..."
	npx wrangler d1 execute $(DB_NAME) --remote --file=$(RULES_DIR_SEEDER_PART2)
	@echo "Completed seeding rules directory (part 2)."

# Seed rules directory (part 3)
.PHONY: seed-rules-dir-part3
seed-rules-dir-part3:
	@echo "Seeding rules from rules directory (part 3)..."
	npx wrangler d1 execute $(DB_NAME) --remote --file=$(RULES_DIR_SEEDER_PART3)
	@echo "Completed seeding rules directory (part 3)."

# Seed rules directory (part 4)
.PHONY: seed-rules-dir-part4
seed-rules-dir-part4:
	@echo "Seeding rules from rules directory (part 4)..."
	wrangler d1 execute $(DB_NAME) --remote --file=$(RULES_DIR_SEEDER_PART4)
	@echo "Completed seeding rules directory (part 4)."

# Clean the database (optional - use with caution)
.PHONY: clean
clean:
	@echo "WARNING: This will delete all data from the database."
	@read -p "Are you sure you want to continue? (y/n) " confirm; \
	if [ "$$confirm" = "y" ]; then \
		echo "Cleaning database..."; \
		npx wrangler d1 execute $(DB_NAME) --remote --command="DELETE FROM rule"; \
		echo "Database cleaned."; \
	else \
		echo "Operation cancelled."; \
	fi

# Help
.PHONY: help
help:
	@echo "Available targets:"
	@echo "  all               - Seed all rules (both rules-new and rules directories)"
	@echo "  seed-rules-new    - Seed rules from the rules-new directory"
	@echo "  seed-rules-dir    - Seed all rules from the rules directory (all parts)"
	@echo "  seed-rules-dir-part1 - Seed rules from the rules directory (part 1)"
	@echo "  seed-rules-dir-part2 - Seed rules from the rules directory (part 2)"
	@echo "  seed-rules-dir-part3 - Seed rules from the rules directory (part 3)"
	@echo "  seed-rules-dir-part4 - Seed rules from the rules directory (part 4)"
	@echo "  clean             - Clean the database (delete all rules)"
	@echo "  help              - Show this help message"

