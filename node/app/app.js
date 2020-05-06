var express = require('express')
var path = require('path')
var app = express()

app.use('/storage', express.static("/mnt/disk"))

app.listen(80)
