const request = require('supertest');
const app = require('../server/index');

describe('GET /user/1', () => {
    test('Responds with JSON containing a single user', (done) => {
        request(app)
        .get('/user/1')
        .expect('Content-Type', /json/)
        .expect(200, done);
    });
});