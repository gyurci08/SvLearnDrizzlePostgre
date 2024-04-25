// db/db.server.ts
import {drizzle} from "drizzle-orm/postgres-js";
import postgres from "postgres";
import {DATABASE_URL} from "$env/static/private";
import {dev} from "$app/environment";


// const client
const client = postgres(DATABASE_URL);
export const db = drizzle(client,{});