import express from "express";

import recordRoutes from "./routes/recordRoutes.js"

const app = express()

app.use(express.json())

app.use('/records', recordRoutes);

export default app