require("dotenv").config();
const express = require("express");
const cors = require("cors");
const userRoutes = require("./src/routes/userRoutes");
const postRoutes = require("./src/routes/postRoutes");
const reportRoutes = require("./src/routes/reportRoutes");

const app = express();
app.use(cors());
app.use(express.json());

app.use("/api", userRoutes);
app.use("/api/post", postRoutes);
app.use("/api", reportRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`🚀 Servidor rodando em http://localhost:${PORT}`);
});
