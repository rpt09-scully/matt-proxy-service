// tests for database/index.js
require('dotenv').config();
const db = require('../database/index');

// test main database function
// get trail data from trail_id
test('getAtrail returns results object to callback with all required keys', (done) => {
  // TODO: change to getTrail

  db.getAtrail(1, function (trailResult) {
    expect(trailResult[0]).toBeInstanceOf(Object);
    expect(trailResult[0]).toHaveProperty('trail_id');
    expect(trailResult[0]).toHaveProperty('trail_name');
    expect(trailResult[0]).toHaveProperty('distance');
    expect(trailResult[0]).toHaveProperty('distance_units');
    expect(trailResult[0]).toHaveProperty('elevation_gain');
    expect(trailResult[0]).toHaveProperty('elevation_units');
    expect(trailResult[0]).toHaveProperty('description');
    expect(trailResult[0]).toHaveProperty('route_type');
    expect(trailResult[0]).toHaveProperty('difficulty');
    expect(trailResult[0]).toHaveProperty('general_area');
    expect(trailResult[0]).toHaveProperty('origin');
  });
  done();
});

// get tags from trail_id
test('getTags() returns array of tags with at least 6 tags', (done) => {
  db.getTags(1, function (tagsResult) {
    expect(tagsResult).toBeInstanceOf(Array);
    expect(tagsResult.length).toBeGreaterThan(5);
  });
  done();
});
