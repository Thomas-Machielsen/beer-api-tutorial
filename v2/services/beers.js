module.exports = class BeersService {
  getBeer() {
    return new Promise(resolve => {
      resolve({ data: 'beers' })
    });
  }
};