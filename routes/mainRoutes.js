const express = require("express");

const authRoutes = require("./authRoutes");
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
const dateConverterRoutes = require("./dateConverterRoutes");
const comboGeneratorRoutes = require("./comboGeneratorRoutes");
const dynamicCityRoutes = require("./dynamicCityRoutes");

const router = express.Router();

router.use("/", authRoutes);
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
router.use("/task11", dateConverterRoutes);
router.use("/task12", comboGeneratorRoutes);
router.use("/task13", dynamicCityRoutes);

module.exports = router;
