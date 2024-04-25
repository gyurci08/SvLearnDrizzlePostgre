#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  CREATE DATABASE sveltedb;
  CREATE USER svelteuser WITH PASSWORD 'Password111';
  GRANT ALL PRIVILEGES ON DATABASE sveltedb TO svelteuser;

  \connect sveltedb

  CREATE TABLE IF NOT EXISTS "users" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"username" text NOT NULL
  );

  INSERT INTO users (username)
    VALUES ('user1');

EOSQL