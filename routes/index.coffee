"use strict"
__appdir     = require('path').join(__dirname, '..')

markdown     = require('discount').Markdown

exports.init = (app) =>

# Routes
exports.index = (req, res) ->
  res.render 'index'

exports.about = (req, res) ->
  res.render 'about'

exports.history = (req, res) ->
  res.render 'history'

exports.e404 = (req, res) ->
  res.status 404
  res.render '404'
