const show = (req, res) => {
  console.log("show API called");
  try {
    res.render("./dynamicCellViews/task1.ejs");
  } catch (error) {
    console.log("Error inside show API", error);
  }
};

module.exports = { show };
