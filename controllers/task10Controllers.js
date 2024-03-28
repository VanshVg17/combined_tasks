const path = require("path");

const posts = (req, res) => {
  if (req.query.page === undefined) {
    return res.redirect("/task10/posts?page=1&search=none");
  }
  res.sendFile(path.join(__dirname, "../views/task10Views/posts.html"));
};

const postDetails = (req, res) => {
  res.sendFile(path.join(__dirname, "../views/task10Views/postDetails.html"));
};

module.exports = { posts, postDetails };
