var fs = require('fs');

fs.readFile(__dirname+'/config.json', 'utf8', function (err, data) {                                                                      if (err) { return console.log('No config file found :', err); }
    var server = require('./server.js')(JSON.parse(data));
    server.start(8000);
});
