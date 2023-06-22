var express = require('express')
var app = express()

app.set('port', (process.env.PORT || 3000))
app.use(express.static(__dirname + '/public'))

app.get('/', function(request, response) {
  response.send('Hello Team')
})

app.listen(app.get('port'), function() {
  console.log("Node app is running at localhost127.0.0.1:" + app.get('port'))
})
