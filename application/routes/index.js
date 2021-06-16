var express = require('express');
var router = express.Router();
var getRecentPosts = require('../middleware/postsmiddleware').getRecentPosts;
var db = require('../conf/database');

// GET home page
router.get('/', function(req, res, next) {
  res.render('index',{title: "Home"});
});

// GET remaining pages
router.get('/samplepost',(req, res, next) => {
  res.render("samplepost",{title: "View an Image"});
})
router.get('/Forest',(req, res, next) => {
  res.render("Forest",{title: "A spectacular view!"});
})
router.get('/Beach',(req, res, next) => {
  res.render("Beach",{title: "Day at the beach!"});
})
router.get('/Autumn',(req, res, next) => {
  res.render("Autumn",{title: "Autumn Beauty"});
})
router.get('/City',(req, res, next) => {
  res.render("City",{title: "Lovely City Lights"});
})
router.get('/NewsFeed', getRecentPosts,(req, res, next) => {
  res.render("NewsFeed",{title: "Trending"});
})
router.get('/About',(req, res, next) => {
  res.render("About",{title: "About the Creators"});
})
router.get('/login',(req, res, next) => {
  res.render("login",{title: "Log In"});
})
router.get('/registration',(req, res, next) => {
  res.render("registration",{title: "Create an Account"});
})
router.get('/postimage',(req, res, next) => {
  res.render("postimage",{title: "Post an Image"});
})

router.get('/post/:id(\\d+)', (req,res,next) => {
 let baseSQL = "SELECT u.username, p.title, p.description, p.photopath, p.created \
 FROM users u \
 JOIN posts p \
 ON u.id=fk_userid \
 WHERE p.id=?;";

 let postId = req.params.id;
 
 db.execute(baseSQL, [postId])
 .then(([results, fields]) => {
   if(results && results.length){
     let post = results[0];
      res.render('imagepost', {currentPost: post});
   }else{
     res.redirect('/NewsFeed');
   }
 })
});

router.get('/imagepost',(req, res, next) => {
  res.render("imagepost",{title: "Browse Images"});
})

module.exports = router;
