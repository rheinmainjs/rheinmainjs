"use strict"

express = require('express')
routes  = require('./routes')
bodyParser = require('body-parser')
methodOverride = require('method-override')

app     = module.exports = express()

# Configuration
app.set 'views', __dirname + '/views'
app.set 'view engine', 'jade'
app.use bodyParser()
app.use methodOverride()
app.use express.static(__dirname + '/public')
app.use app.router

#app.configure 'development', () ->
#  app.set 'cacheInSeconds', 0
#  app.use express.errorHandler({ dumpExceptions: true, showStack: true })

#app.configure 'production', () ->
app.set 'cacheInSeconds', 60 * 60
app.use express.errorHandler()

# Routes
routes.init app
app.get  '/',         routes.index
app.get  '/about',    routes.about
app.get  '/history',  routes.history
app.get  '/wishlist', routes.wishlist
app.get  '/*',        routes.e404

app.listen 3333
