const jwtStrategy = require("passport-jwt").Strategy;
const jwtExtract = require("passport-jwt").ExtractJwt;
const util = require("util");

require("dotenv").config();

const con = require("./dbConfig");

let promisedQuery = util.promisify(con.query).bind(con);

const extractCookie = (req) => {
  if (req.headers.cookie) {
    let token = req.headers.cookie.split("=")[1];
    return token;
  }
};

module.exports = (passport) => {
  passport.use(
    new jwtStrategy(
      {
        secretOrKey: process.env.JWT_SECRET_KEY,
        jwtFromRequest: jwtExtract.fromExtractors([extractCookie]),
      },
      async (jwt_payload, done) => {
        let query = `SELECT * from users WHERE username="${jwt_payload.data.username}"`;
        let result = await promisedQuery(query);
        if (result.length == 0) {
          return done(null, false);
        }
        return done(null, result);
      }
    )
  );
};
