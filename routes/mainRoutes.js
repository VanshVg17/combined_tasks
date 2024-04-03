const express = require("express");

const task16Routes = require("./task16Routes");
const dynamicCellRoutes = require("./dynamicCellRoutes");
const kukKubeRoutes = require("./kukKubeRoutes");
const ticTacToeRoutes = require("./ticTacToeRoutes");
const paginationRoutes = require("./paginationRoutes");
const attendanceReportRoutes = require("./attendanceReportRoutes");
const dynamicGridRoutes = require("./dynamicGridRoutes");
const delimeterSearchRoutes = require("./delimeterSearchRoutes");
const jobFormRoutes = require("./jobFormRoutes");
const jobFormAjaxRoutes = require("./jobFormAjaxRoutes");
const jsonPlaceholderRoutes = require("./jsonPlaceholderRoutes");
const task11Routes = require("./task11Routes");
const task12Routes = require("./task12Routes");
const task13Routes = require("./task13Routes");

const router = express.Router();

router.use("/", task16Routes);
router.use("/task1", dynamicCellRoutes);
router.use("/task2", kukKubeRoutes);
router.use("/task3", ticTacToeRoutes);
router.use("/task4", paginationRoutes);
router.use("/task5", attendanceReportRoutes);
router.use("/task6", dynamicGridRoutes);
router.use("/task7", delimeterSearchRoutes);
router.use("/task8", jobFormRoutes);
router.use("/task9", jobFormAjaxRoutes);
router.use("/task10", jsonPlaceholderRoutes);
router.use("/task11", task11Routes);
router.use("/task12", task12Routes);
router.use("/task13", task13Routes);

module.exports = router;
