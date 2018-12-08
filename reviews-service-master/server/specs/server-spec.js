const mysql = require('mysql');
const config = require('../../database/config_example.js');
const request = require('request');
const expect = require('chai').expect;


describe('Reviews Integration Tests', () => {
  let dbConnection;

  beforeEach((done) => {

    dbConnection = mysql.createConnection(config);
    dbConnection.connect();
    var tablename = 'reviews';

    dbConnection.query('truncate ' + tablename, done);
  });

  afterEach(() => {
    dbConnection.end();
  });

  it('Should output all reviews from the DB', (done) => {
    let str = `INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES (24, 1, 5, "The view was worth every step!", "10/22/2016", 1);`;

    dbConnection.query(str, err => {
      if (err) {
        throw err;
      }

      request('http://localhost:3004/reviews', (error, res, body) => {
        let body1 = JSON.parse(body);

        expect(body1[0].data.attributes.body).to.equal('The view was worth every step!');
        expect(body1[0].data.attributes.user_id).to.equal(24);
        done();
      });
    });
  });

  it('Should output reviews for trail sorted by most recent', (done) => {
    let str = 'INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES ?'
    let values = [[70, 3, 5, "I am just a lil date test", "10/5/2018", 10],
                  [30, 3, 2, "Hi! I am the oldest review!.", "9/13/2016", 8],
                  [30, 3, 4, "I am the middle-child review. Just hanging...in the middle", "5/20/2018", 5]]

    dbConnection.query(str, [values], err => {
      if (err) {
        throw err;
      }

      request('http://localhost:3004/3/reviewsNew', (error, res, body) => {
        let body1 = JSON.parse(body);
        expect(body1[0].data.attributes.date).to.equal('10/5/2018');
        expect(body1[2].data.attributes.date).to.equal('9/13/2016');
        done();
      });
    });
  });

  it('Should output reviews for trail sorted by oldest', (done) => {
    let str = 'INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES ?'
    let values = [[70, 3, 5, "I am just a lil date test", "10/5/2018", 10],
                  [30, 3, 2, "Hi! I am the oldest review!.", "9/13/2016", 8],
                  [30, 3, 4, "I am the middle-child review. Just hanging...in the middle", "5/20/2018", 5]]

    dbConnection.query(str, [values], err => {
      if (err) {
        throw err;
      }

      request('http://localhost:3004/3/reviewsOld', (error, res, body) => {
        let body1 = JSON.parse(body);
        expect(body1[0].data.attributes.date).to.equal('9/13/2016');
        expect(body1[2].data.attributes.date).to.equal('10/5/2018');
        done();
      });
    });
  });

  it('Should output reviews for trail sorted by highest rating', (done) => {
    let str = 'INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES ?'
    let values = [[70, 3, 5, "I am just a lil date test", "10/5/2018", 10],
                  [30, 3, 2, "Hi! I am the oldest review!.", "9/13/2016", 8],
                  [30, 3, 4, "I am the middle-child review. Just hanging...in the middle", "5/20/2018", 5]]

    dbConnection.query(str, [values], err => {
      if (err) {
        throw err;
      }

      request('http://localhost:3004/3/topreviews', (error, res, body) => {
        let body1 = JSON.parse(body);
        expect(body1[0].data.attributes.rating).to.equal(5);
        expect(body1[2].data.attributes.rating).to.equal(2);
        done();
      });
    });
  });

  it('Should output reviews for trail sorted by lowest rating', (done) => {
    let str = 'INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES ?'
    let values = [[70, 3, 5, "I am just a lil date test", "10/5/2018", 10],
                  [30, 3, 2, "Hi! I am the oldest review!.", "9/13/2016", 8],
                  [30, 3, 4, "I am the middle-child review. Just hanging...in the middle", "5/20/2018", 5]]

    dbConnection.query(str, [values], err => {
      if (err) {
        throw err;
      }

      request('http://localhost:3004/3/bottomreviews', (error, res, body) => {
        let body1 = JSON.parse(body);
        expect(body1[0].data.attributes.rating).to.equal(2);
        expect(body1[2].data.attributes.rating).to.equal(5);
        done();
      });
    });
  });

  it('Should rank trails by cumlative ratings', (done) => {
    let str = 'INSERT INTO reviews (user_id, trail_id, rating, description, date, act_id) VALUES ?'
    let values = [[70, 3, 5, "I am just a lil date test", "10/5/2018", 10],
                  [30, 2, 2, "Hi! I am the oldest review!.", "9/13/2016", 8],
                  [30, 2, 4, "I am the middle-child review. Just hanging...in the middle", "5/20/2018", 5]]

    dbConnection.query(str, [values], err => {
      if (err) {
        throw err;
      }

      request('http://localhost:3004/3/trailRank', (error, res, body) => {
        let body1 = JSON.parse(body);
        expect(body1).to.be.a('string');
        expect(body1).to.equal('#2 ranked trail out of 2');
        done();
      });
    });
  });

});
