const express = require("express");

const controller = require("../controllers/task7Controllers");

const router = express.Router();

router.get("/", controller.getStudents);
router.post("/", controller.search);

module.exports = router;
