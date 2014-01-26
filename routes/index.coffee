"use strict"
__appdir     = require('path').join(__dirname, '..')

marked     = require('marked')

exports.init = (app) =>

# Routes
exports.index = (req, res) ->
  res.render 'index'

exports.about = (req, res) ->
  res.render 'about'

exports.history = (req, res) ->
  res.render 'history'

exports.wishlist = (req, res) ->
  res.render 'wishlist'

exports.e404 = (req, res) ->
  res.status 404
  res.render '404'
