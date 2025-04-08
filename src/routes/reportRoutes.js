const express = require("express");
const router = express.Router();
const reportController = require("../controllers/reportController");

router.get("/report/csv", reportController.exportUserCSV);
router.get("/report/pdf", reportController.exportUserPDF);

module.exports = router;