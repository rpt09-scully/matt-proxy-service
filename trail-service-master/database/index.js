require('dotenv').config();

var knex = require('knex')({
  client: 'mysql',
  connection: {
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: 'trailService'
  }
});

// Get a trail from the database using its `id` and pass the query
// result row to the callback
// called from ../server/index.js

var getAtrail = (id, callback) => {
  knex.select()
    .from('trail')
    .where('trail_id', '=', id)
    .then((row) => {
      callback(row);
    })
    .catch((error) => {
      console.error('getAtrail select error: ', error);
    });
};

var getTags = (id, callback) => {
  // SELECT tag_name FROM tags WHERE tag_id IN (SELECT tag_id FROM trail_tags WHERE trail_id = 1)
  var subquery = knex.select('tag_id').from('trail_tags').where('trail_id', '=', id);
  knex.select('tag_name').from('tags')
    .whereIn('tag_id', subquery)
    .then((tags) => {
      var tagsArr = [];
      tags.forEach( (tag) => {
        tagsArr.push(tag.tag_name);
      });
      callback(tagsArr);
    })
    .catch((error) => {
      console.error('getTags select error: ', error);
    });
};

// for testing only
var getAllTrails = (callback) => {
  knex.select()
    .from('trail')
    .then((rows) => {
      callback(rows);
    })
    .catch((error) => {
      console.error('getAllTrails select error: ', error);
    });
};

module.exports.getAllTrails = getAllTrails;
module.exports.getAtrail = getAtrail;
module.exports.getTags = getTags;
