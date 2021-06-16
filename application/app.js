var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var handlebars = require('express-handlebars');
var sessions = require('express-session');
var mysqlSession = require('express-mysql-session')(sessions);

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var postsRouter = require('./routes/posts');
var dbRouter = require('./routes/dbtest');

var app = express();

//Set up the template engine for handlebars
app.engine(
    "hbs", 
    handlebars({

layoutsDir: path.join(__dirname,"views/layouts"),
partialsDir: path.join(__dirname,"views/partials"),
extname: ".hbs",
defaultLayout: "home",
helpers: { //No helpers needed
}
    })
);

var mysqlSessionStore = new mysqlSession(
    { //Use default settings
},
    require('./conf/database')
    );
app.use(sessions({
    key: "csid",
    secret: "csc317's secret pass phrase",
    store: mysqlSessionStore,
    resave: false,
    saveUninitialized: false
}));

app.set("view engine", "hbs");
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use("/public", express.static(path.join(__dirname, 'public')));

app.use((req, res, next) => {
    console.log(req.session);
    if(req.session.username){
        res.locals.logged = true;
    }
    next();
})

app.use('/', indexRouter);
app.use('/dbtest', dbRouter);
app.use('/users', usersRouter);
app.use('/posts', postsRouter);


app.use((err, req, res, next) => {
    res.status(500);
    res.send('An error has occured when running the database. Please check.');
})
module.exports = app;
