Set = require('tiny-filmmaking-studio').Set

module.exports = class IntroSet extends Set

	constructor: ->

		super

		@id = 'audio'

		el = @film.theatre.model.audio.add('../xeno/mix4.mp3', 0)._el

		@film.loader.loadAudio el, 8527424

		return