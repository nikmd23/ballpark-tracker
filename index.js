var express = require('express');
var app = express();
var path = require('path');

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

app.get('/', (req, res) => res.render('index', {AZURE_MAPS_KEY: process.env.AZURE_MAPS_KEY }));

// Configuring static assets (css/js)
app.use(express.static('public'))

app.listen(3000);
