const BeersService = require("../services/beers");
const { STATUSCODES } = require('../constants');

const Beers = new BeersService();

const getBeer = (req, res) => {
  Beers.getBeer(req)
    .then(results => res.json(results))
    .catch(err => {
      res.status(STATUSCODES.NOT_FOUND);
      res.json(err);
    });
};

module.exports = { getBeer };
