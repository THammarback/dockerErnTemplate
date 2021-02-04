const express = require('express');
const router = express.Router();

router.get('/', init);

function init(req, res, next){
  console.log("well yes")
  res.json({hello:"world"})
}


module.exports = router;
