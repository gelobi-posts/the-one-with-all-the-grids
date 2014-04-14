ThePanelSet = require '../sets/ThePanelSet'
PhotoshopSet = require '../sets/PhotoshopSet'
Qwertify = require '../sets/PhotoshopSet/Qwertify'
Classify = require '../sets/PhotoshopSet/Classify'

module.exports = (film) ->

	film.addSet new PhotoshopSet film

	film.addSet new ThePanelSet film

	implementQwertify film

	implementClassify film

