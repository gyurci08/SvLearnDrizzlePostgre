import type {Config} from "drizzle-kit";
import {DATABASE_URL} from "./env.server";

if (!DATABASE_URL){
    throw new Error("No url!");
}
export default {
    schema:"./src/lib/db/schema.ts",
    out:"./migrations",
    driver:"pg",
    dbCredentials:{
        connectionString: DATABASE_URL
    }
} satisfies Config;