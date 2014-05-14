Set = require('tiny-filmmaking-studio').Set

module.exports = class IntroSet extends Set

	constructor: ->

		super

		@id = 'audio'

		el = @film.theatre.model.audio.add('../xeno/rem.mp3', 0)._el

		@film.loader.loadAudio el, 4392000

		return