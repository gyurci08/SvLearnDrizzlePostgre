ALTER TABLE "scores1" RENAME TO "users";--> statement-breakpoint
ALTER TABLE "users" RENAME COLUMN "name" TO "username";--> statement-breakpoint
ALTER TABLE "users" DROP COLUMN IF EXISTS "score";