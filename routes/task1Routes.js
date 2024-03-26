const express = require("express");

const task1Controller = require("../controllers/task1Controllers");

const router = express.Router();

router.get("/", task1Controller.show);

module.exports = router;
