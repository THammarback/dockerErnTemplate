require('rootpath')();
const express = require('express');
const app = express();
const cors = require('cors');

app.use(cors());
app.use('/', require('./main/controller'));


const port = process.env.NODE_ENV === 'production' ? (process.env.PORT || 80) : 3000;
const server = app.listen(port, function () {
    console.log('Server listening on port ' + port);
});
