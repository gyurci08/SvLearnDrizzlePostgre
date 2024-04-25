CREATE TABLE IF NOT EXISTS "scores" (
	"id" serial PRIMARY KEY NOT NULL,
	"name" text NOT NULL,
	"score" integer NOT NULL
);
--> statement-breakpoint
DROP TABLE "scores";