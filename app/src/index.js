const express = require("express");

const app = express();

const PORT = process.env.PORT || 3000;
const ENVIRONMENT = process.env.ENVIRONMENT || "development";
const VERSION = process.env.APP_VERSION || "1.0.0";

app.use(express.json());

app.get("/", (req, res) => {
  res.json({
    message: "Hello from DevOps Deployment Lab",
    version: VERSION,
    environment: ENVIRONMENT
  });
});

app.get("/health", (req, res) => {
  res.status(200).json({
    status: "ok"
  });
});

app.get("/info", (req, res) => {
  res.json({
    application: "devops-deployment-lab",
    version: VERSION,
    environment: ENVIRONMENT,
    hostname: require("os").hostname()
  });
});

app.listen(PORT, () => {
  console.log(`Application running on port ${PORT}`);
});