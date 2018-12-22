const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const app = express();

const setPORT = () => {
    if (process.env.NODE_ENV !== 'production') {
        return 3002;
    } else {
        return 8081;
    }
}

const port = setPORT();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use(express.static(path.join(__dirname, 'public')));

app.get('/:trailId(\\d+$)*?', function(req, res) {
    res.status(200).sendFile(__dirname + '/public/index.html');
});

app.listen(port, () => {
    console.log(`server running at: http://localhost:${port}`);
});