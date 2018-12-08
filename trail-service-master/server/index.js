const express = require('express');
const db = require('../database/index');
const morgan = require('morgan');

const app = express();
var port = process.env.PORT;

if (!port || port === '') {
  port = 3001;
}

// log every request to the console
// https://www.npmjs.com/package/morgan#dev
app.use(morgan('dev'));

// Per requirements: Set up express to serve a static app
// via a differentiating port
// TODO: will be proxy index.html
app.use(express.static(__dirname + '/../client/dist'));

// to test sending all rows from trail table
// app.get('/', (req, res) => {
//   db.getAllTrails( (rowsRes) => {
//     res.json(rowsRes);
//   });
// });

/*
  API endpoint for trail service
  Requests must include /:trailId/trailInfo
  Example: http://localhost:3001/3/trailInfo
  for the Trail where trail_id === 3
*/
app.get('/:trailId/trailInfo', (req, res) => {
  var theId = req.params.trailId;
  db.getAtrail(theId, (row) => {
    // trail object for response
    // see example-data.json for example
    var theTrail = row[0];
    var resObj = {};
    resObj.data = {};
    resObj.data.attributes = {};
    for (var prop in theTrail) {
      if (prop === 'trail_id') {
        resObj.data['trail_id'] = theTrail['trail_id'];
      } else {
        resObj.data.type = 'trail';
        resObj.data.attributes[prop] = row[0][prop];
      }
    }
    db.getTags(theId, (tags) => {
      resObj.data.attributes.tags = tags;
      res.status(200).send(resObj);
    });
  });
});

app.listen(port, () => console.log(`Listening on http://localhost:${port}`));

// for Mocha tests
module.exports = app;
