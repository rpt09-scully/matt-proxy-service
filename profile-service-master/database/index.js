const mysql = require('mysql');
const mysqlConfig = require('./config.js');

const connection = mysql.createConnection(mysqlConfig);

const getUser = (id) => {
  return new Promise((resolve, reject) => {
    connection.query(`SELECT * FROM profiles WHERE prof_id = ${id}`, function (err, rows, fields) {
      if (err) throw err
      resolve(rows);
    })
  });
};

const getUserActivities = (id) => {
  return new Promise((resolve, reject) => {
    connection.query(`SELECT act_name FROM prof_act INNER JOIN activities ON activities.act_id = prof_act.act_id WHERE prof_id = ${id}`, function (err, rows, fields) {
      if (err) throw err
      resolve(rows);
    })
  });
};


module.exports = {
  getUser,
  getUserActivities
};

