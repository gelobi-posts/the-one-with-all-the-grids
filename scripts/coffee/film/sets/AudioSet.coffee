Set = require('tiny-filmmaking-studio').Set

module.exports = class IntroSet extends Set

	constructor: ->

		super

		@id = 'audio'

		@film.theatre.model.audio.add '../audio/mix1.mp3', 0

		return