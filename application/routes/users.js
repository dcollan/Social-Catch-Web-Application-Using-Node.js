var express = require('express');
var router = express.Router();
var db = require('../conf/database');

// GET users listing
router.get('/', function (req, res, next) {
  res.send('respond with a resource');
});

router.post('/login', (req, res, next) => {
  let username = req.body.username;
  let password = req.body.password;

  let baseSQL = "SELECT id, username, password FROM users WHERE username=? AND password=?;"
  let userId;

  db.execute(baseSQL,[username, password])
  .then(([results,fields]) => {
    if(results && results.length == 1){
      userId = results[0].id;
      req.session.userId = userId;
      req.session.username = username;
      res.locals.logged=true;
      res.redirect('/postimage');
    }
    else{
      res.redirect('/login');
    }
  })
})

module.exports = router;
