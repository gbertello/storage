var express = require('express')
var path = require('path')
var app = express()

app.use('/storage', express.static(path.join(__dirname, 'storage')))

app.listen(80)
