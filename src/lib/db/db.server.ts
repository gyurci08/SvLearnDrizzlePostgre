// db/db.server.ts
import {drizzle} from "drizzle-orm/postgres-js";
import postgres from "postgres";
import {DATABASE_URL} from "./db.env.server";
import {dev} from "$app/environment";


// const client
const client = postgres(DATABASE_URL);
export const db = drizzle(client,{});