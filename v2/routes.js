const { Router } = require('express');
const router     = module.exports = Router();

// Controllers
const beerCtrl  = require('./controllers/beersCtrl');

router.get('/api/beers', [beerCtrl.getBeer]);
