const express = require("express");

const controller = require("../controllers/comboGeneratorControllers");

const router = express.Router();

router.get("/", controller.getPage);
router.post("/", controller.getField);

module.exports = router;
