const data = require('./quotes').quotes;

//THIS FILE GENERATES REVIEWS WHICH WERE THEN STORED IN schema.sql
const dateGen = () => {
  let dateStr = ''
  const years = [2018, 2017, 2016]

  let day = (Math.floor(Math.random() * (12 - 1) + 1));
  let month = (Math.floor(Math.random() * (30 - 1) + 1));
  let year = years[Math.floor(Math.random() * years.length)];

  return dateStr += day + '/' + month + '/' + year
}
const seedDB = (data) => {
  let str = ''
  let trailId = 0;
  for (var i = 0; i < 20; i ++) {
    trailId ++;
    for (var j = 0; j < (Math.random() * (20 - 3) + 3); j ++) {

      let date = dateGen();
      let rating = (Math.floor(Math.random() * (6 - 1) + 1));
      let userId = (Math.floor(Math.random() * (100 - 1) + 1));
      let review = data[Math.floor(Math.random() * data.length)];
      let actId = (Math.floor(Math.random() * (16 - 1) + 1));

      str += `INSERT INTO reviews (user_id, trail_id, rating, description, date, actId) VALUES (${userId}, ${trailId}, ${rating}, "${review}", "${date}", ${actId});\n`
    }
  }
  return str
}


module.exports = {
  seedDB
}



