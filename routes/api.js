var express = require('express');
var router = express.Router();

/* GET greeting. */
router.get('/sayhello', function(req, res, next) {
  res.send('Hello meetup memebers');
});

module.exports = router;
