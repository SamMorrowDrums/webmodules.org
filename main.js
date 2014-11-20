var express = require('express'),
    app = express(),
    port = process.env.PORT || 3000;

app.get('/', function (req, res) {
    console.log('Request recevied');
    res.write('Hello World');
    res.end();
});

app.listen(port);

console.log(process.env);
console.log('App listening on port ' + port);