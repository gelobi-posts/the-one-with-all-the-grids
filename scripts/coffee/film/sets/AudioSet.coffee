Set = require('tiny-filmmaking-studio').Set

module.exports = class IntroSet extends Set

	constructor: ->

		super

		@id = 'audio'

		el = @film.theatre.model.audio.set(window.postBase + '/audio/narration.mp3')._el

		@film.loader.loadAudio el, 2960142

		return