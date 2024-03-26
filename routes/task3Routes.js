const express = require("express");

const task3Controller = require("../controllers/task3Controllers");

const router = express.Router();

router.get("/", task3Controller.show);

module.exports = router;
