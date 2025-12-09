import 'dotenv/config'

import {neon,neonConfig} from "@neondatabase/serverless";


const sql = neon(process.env.DATABASE_URL);

const db = drizzle(sql);

export { db, sql };