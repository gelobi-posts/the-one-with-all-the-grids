Set = require('tiny-filmmaking-studio').Set

module.exports = class IntroSet extends Set

	constructor: ->

		super

		@id = 'audio'

		@film.theatre.model.audio.add '../../audio/mixdown-1.mp3'

		return