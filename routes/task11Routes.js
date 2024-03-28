const express = require("express");

const controller = require("../controllers/task11Controllers");

const router = express.Router();

router.get("/", controller.showHome);

module.exports = router;
