const express = require('express');
const bodyParser = require('body-parser');

const db = require('../database');
const gets = require('../routes/api/gets.js')
const app = express();
const PORT = 3004;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

//Use Routes
app.use('/', gets)

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`);
});


