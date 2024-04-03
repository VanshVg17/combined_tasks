const express = require("express");

const task16Routes = require("./task16Routes");
const dynamicCellRoutes = require("./dynamicCellRoutes");
const task2Routes = require("./task2Routes");
const task3Routes = require("./task3Routes");
const task4Routes = require("./task4Routes");
const task5Routes = require("./task5Routes");
const task6Routes = require("./task6Routes");
const task7Routes = require("./task7Routes");
const task8Routes = require("./task8Routes");
const task9Routes = require("./task9Routes");
const task10Routes = require("./task10Routes");
const task11Routes = require("./task11Routes");
const task12Routes = require("./task12Routes");
const task13Routes = require("./task13Routes");

const router = express.Router();

router.use("/", task16Routes);
router.use("/task1", dynamicCellRoutes);
router.use("/task2", task2Routes);
router.use("/task3", task3Routes);
router.use("/task4", task4Routes);
router.use("/task5", task5Routes);
router.use("/task6", task6Routes);
router.use("/task7", task7Routes);
router.use("/task8", task8Routes);
router.use("/task9", task9Routes);
router.use("/task10", task10Routes);
router.use("/task11", task11Routes);
router.use("/task12", task12Routes);
router.use("/task13", task13Routes);

module.exports = router;
