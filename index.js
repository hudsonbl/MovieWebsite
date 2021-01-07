const express = require('express');
const morgan = require('morgan');
const cors = require('cors');

const app = express();

const api = require('./api');
const port = process.env.PORT || 8080;

app.use(cors());
app.use(express.json());
app.use(express.static('public'));
app.use(morgan('dev'));

app.use('/', api);

app.use('*', (req, res, next) => {
    res.status(400).send({
        error: "URL doesnt exist",
        successStatus: false
    });
});

app.listen(port, function() {
    console.log("== Server running on port: " + port);
});