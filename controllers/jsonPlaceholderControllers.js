const path = require("path");

const posts = (req, res) => {
  if (req.query.page === undefined || req.query.page == "") {
    return res.redirect("/task10/posts?page=1&search=none");
  }
  res.sendFile(path.join(__dirname, "../views/jsonPlaceholderViews/posts.html"));
};

const postDetails = (req, res) => {
  res.sendFile(path.join(__dirname, "../views/jsonPlaceholderViews/postDetails.html"));
};

module.exports = { posts, postDetails };
