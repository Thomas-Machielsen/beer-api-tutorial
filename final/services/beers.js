const helpers = require("../utils/helpers");
const { NO_BEERS } = require("../constants").ERROR;

module.exports = class BeersService {
  constructor(Sequelize, BeerSchema, RatingSchema) {
    this.Sequelize = Sequelize;
    this.BeerSchema = BeerSchema;
    this.RatingSchema = RatingSchema;

    this.makeAssocations();

    this.saveSelectors();
  }

  makeAssocations() {
    this.RatingSchema.associations(this.BeerSchema.Beer);
    this.BeerSchema.associations(this.RatingSchema.Rating);
  }

  saveSelectors() {
    this.attributesArrayWithId = ["id", "name", "style", "brewer"];
    this.starAttribute = [
      [this.Sequelize.fn("AVG", this.Sequelize.col("rating")), "stars"]
    ];
  };

  getBeer(req) {
    return new Promise((resolve, reject) => {
      this.BeerSchema.Beer.findAll({
        attributes: this.attributesArrayWithId,
        required: false,
        include: [
          {
            model: this.RatingSchema.Rating,
            attributes: this.starAttribute
          }
        ],
        raw: true,
        nest: true,
        group: ["id"],
        where: helpers.getParams(req.params.id)
      })
      .then(beers => {
        if (beers.length === 0) { reject(NO_BEERS); }

        resolve({
          success: true,
          beers
        });
      })
      .catch(e => {
        reject(e);
      });
    });
  }
};
