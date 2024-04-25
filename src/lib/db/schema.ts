// schema

import {pgTable, serial, text} from "drizzle-orm/pg-core";

export const scores = pgTable("users",{
    id:serial("id").primaryKey(),
    name:text("username").notNull()
})