ThePanelSet = require '../sets/ThePanelSet'
PhotoshopSet = require '../sets/PhotoshopSet'

module.exports = (film) ->

	film.addSet new PhotoshopSet film

	film.addSet new ThePanelSet film

