const User = require("../model/user");

function findByUsername(username) {
   return User.findOne({ username });
}

function findByUsernameOrEmail(username, email) {
   return User.findOne({
      $or: [{ username }, { email }],
   });
}

function createUser(data) {
   const user = new User(data);
   return user.save();
}

module.exports = {
   findByUsername,
   findByUsernameOrEmail,
   createUser
};