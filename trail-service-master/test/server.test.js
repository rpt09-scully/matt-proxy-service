const request = require('supertest');
const app = require('../server/index');


// GET root, respond with static page from client/dist
describe('GET / server function', () => {
  test('should GET client/dist/index.html with correct response and headers', (done) => {
    request(app)
      .get('/')
      .end((err, res) => {
        expect(res.statusCode).toBe(200);
        expect(res.header).toBe('content-type', 'text/html; charset=UTF-8');
      });
    done();
  });
});

// GET trail api endpoint with trail_id
describe('GET :trailId/trailInfo server function', () => {
  test('it should GET trail data with correct response and headers', (done) => {
    request(app)
      .get('/1/trailInfo')
      .end((err, res) => {
        expect(res.statusCode).toBe(200);
        expect(JSON.parse(res)).toBe(true);
      });
    done();
  });
});
