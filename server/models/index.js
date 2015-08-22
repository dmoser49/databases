var db = require('../db');




module.exports = {
  messages: {
    get: function (err, cb) {
      db.dbConnection.query('use ' + chat);
      db.dbConnection.query('select * from messages', function(err){
        if (err){
          throw err;
        }
      })
      // request.on('end', function(){
      //   connection.query()
      })
    }, // a function which produces all the messages
    post: function (err, cb) {

    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {

    },
    post: function () {

    }
  }
};

