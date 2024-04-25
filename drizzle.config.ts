import type {Config} from "drizzle-kit";
import * as dotenv from "dotenv";
dotenv.config();

let DATABASE_URL="postgres://svelteuser:Password111@localhost:5432/sveltedb";

if (!DATABASE_URL){
    // @ts-ignore
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