IntroSet = require '../sets/IntroSet'
ThePanelSet = require '../sets/ThePanelSet'
PhotoshopSet = require '../sets/PhotoshopSet'
implementQwertify = require '../sets/PhotoshopSet/implementQwertify'
implementClassify = require '../sets/PhotoshopSet/implementClassify'
implementMousify = require '../sets/PhotoshopSet/implementMousify'

module.exports = (film) ->

	film.addSet new IntroSet film

	film.addSet new PhotoshopSet film

	film.addSet new ThePanelSet film

	implementQwertify film

	implementClassify film

	implementMousify film

	return

