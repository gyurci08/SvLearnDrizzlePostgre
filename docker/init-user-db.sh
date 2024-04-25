#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL

  CREATE USER svelteuser WITH PASSWORD 'Password111';
  CREATE DATABASE sveltedb OWNER svelteuser;

  GRANT CONNECT ON DATABASE sveltedb TO svelteuser;

  \connect sveltedb

  CREATE TABLE IF NOT EXISTS "users" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"username" text NOT NULL
  );

  INSERT INTO users (username)
    VALUES ('user1');

  GRANT ALL ON SCHEMA public TO svelteuser;
  GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO svelteuser;
  GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public to svelteuser;
  GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public to svelteuser;


EOSQL