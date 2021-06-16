var db = require('../conf/database');
const postMiddleware = {}

postMiddleware.getRecentPosts = function(req, res, next) {
    let baseSQL = 'SELECT id, title, description, thumbnail, created FROM posts ORDER BY created DESC LIMIT 14';
    db.execute(baseSQL,[])
    .then(([results, fields]) => {
        res.locals.results = results;
        if(results && results.length == 0){
            res.redirect('/NewsFeed');
        }
        next();
    })
    .catch((err) => next(err));
}

module.exports = postMiddleware;