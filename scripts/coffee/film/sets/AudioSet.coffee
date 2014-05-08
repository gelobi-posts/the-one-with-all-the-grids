Set = require('tiny-filmmaking-studio').Set

module.exports = class IntroSet extends Set

	constructor: ->

		super

		@id = 'audio'

		@film.theatre.model.audio.add '../../hs.mp3', 0

		return