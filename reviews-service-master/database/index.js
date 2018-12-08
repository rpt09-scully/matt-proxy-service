const mysql = require('mysql');
const config = require('./config_example.js');
const con = mysql.createConnection(config);


//Gets all reviews
const getAll = cb => {
  let str = `SELECT * FROM reviews INNER JOIN activities WHERE reviews.act_id = activities.activity_id`;

  con.query(str, (err, results) => {
    if (err) throw err;
    cb(results);
  });
};
//
const getRanking = cb => {
  let str = `SELECT * FROM reviews INNER JOIN activities WHERE reviews.act_id = activities.activity_id`;
  let obj = {};

  con.query(str, (err, reviews) => {
    if (err) throw err;
    reviews.forEach(review => {
      if (!obj[review.trail_id]) {
        obj[review.trail_id] = review.rating;
      } else {
        obj[review.trail_id] += review.rating;
      }
    });

    cb(obj);
  });
};

const getReview = (reviewId, cb) => {
  let str = `SELECT reviews.review_id, reviews.user_id, reviews.trail_id, reviews.description, reviews.rating, reviews.date, activities.body \
  FROM reviews left join activities on activities.activity_id = reviews.act_id WHERE reviews.review_id = ${reviewId}`

  con.query(str, (err, review) => {
    if (err) throw err;
    cb(review[0])
  })
}

const dateSort = (trailId, sortBy, cb) => {
  let str = `SELECT reviews.review_id, reviews.user_id, reviews.trail_id, reviews.description, reviews.rating, reviews.date, activities.body \
  FROM reviews LEFT JOIN activities on activities.activity_id = reviews.act_id where reviews.trail_id = ${trailId} \
  ORDER BY str_to_date(date, '%m/%d/%Y') ${sortBy}`

  con.query(str, (err, reviews) => {
    if (err) throw err;
    cb(reviews)
  })
}

const ratedSort = (trailId, sortBy, cb) => {
  let str = `SELECT reviews.review_id, reviews.user_id, reviews.trail_id, reviews.description, reviews.rating, reviews.date, activities.body \
  FROM reviews LEFT JOIN activities on activities.activity_id = reviews.act_id where reviews.trail_id = ${trailId} \
  ORDER by rating ${sortBy}`

  con.query(str, (err, reviews) => {
    if (err) throw err;
    cb(reviews)
  })
}
const jsonFormat = (id, review) => {
  console.log(review)
  let obj = {};
  obj.data = {};
  obj.data.type = 'reviews'
  obj.data.id = null;
  obj.data.attributes = {};

    obj.data.id = review.review_id;
    obj.data.attributes.user_id = review.user_id;
    obj.data.attributes.trail_id = review.trail_id;
    obj.data.attributes.body = review.description;
    obj.data.attributes.activity = review.body;
    obj.data.attributes.rating = review.rating;
    obj.data.attributes.date = review.date;
    return obj;
}



module.exports = {
  getAll,
  getRanking,
  getReview,
  dateSort,
  ratedSort,
  jsonFormat,
};
