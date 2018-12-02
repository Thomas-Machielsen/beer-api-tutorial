const Sequelize = require("sequelize");
const BeerSchema = require("../schemas/Beer");
const RatingSchema = require("../schemas/Rating");
const BeersService = require("../services/beers");
const { STATUSCODES } = require('../constants');

const Beers = new BeersService(Sequelize, BeerSchema, RatingSchema);

const getBeer = (req, res) => {
  Beers.getBeer(req)
    .then(results => res.json(results))
    .catch(err => {
      res.status(STATUSCODES.NOT_FOUND);
      res.json(err);
    });
};


module.exports = { getBeer };
