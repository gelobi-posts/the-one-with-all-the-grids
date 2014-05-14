AudioSet = require '../sets/AudioSet'
IntroSet = require '../sets/IntroSet'
GelobiSet = require '../sets/GelobiSet'
EndingSet = require '../sets/EndingSet'
ProjectSet = require '../sets/ProjectSet'
TheatreSet = require '../sets/TheatreSet'
ThePanelSet = require '../sets/ThePanelSet'
PhotoshopSet = require '../sets/PhotoshopSet'
MoreToolsSet = require '../sets/MoreToolsSet'
implementQwertify = require '../sets/PhotoshopSet/implementQwertify'
implementClassify = require '../sets/PhotoshopSet/implementClassify'
implementMousify = require '../sets/PhotoshopSet/implementMousify'

module.exports = (film) ->

	film.addSet new AudioSet film

	film.addSet new IntroSet film

	film.addSet new TheatreSet film

	film.addSet new PhotoshopSet film

	film.addSet new ProjectSet film

	film.addSet new MoreToolsSet film

	film.addSet new GelobiSet film

	film.addSet new ThePanelSet film

	film.addSet new EndingSet film

	implementQwertify film

	implementClassify film

	implementMousify film

	return

