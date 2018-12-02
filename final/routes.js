const { Router } = require('express');
const router     = module.exports = Router();

// Controllers
const beerCtrl  = require('./controllers/beersCtrl');


// All other routes which are accessible by everyone provided they are logged in
router.get('/api/beers', [beerCtrl.getBeer]);
