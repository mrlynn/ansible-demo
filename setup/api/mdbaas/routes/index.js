var express = require('express');
var router = express.Router();
const dotenv = require('dotenv');
const async = require('async');
const chalk = require('chalk');

dotenv.load({
	path: '.env.dev'
});

var title = process.env.title;

var fs = require('fs');

"use strict";

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

module.exports = router;
