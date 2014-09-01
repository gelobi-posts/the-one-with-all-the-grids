Set = require('tiny-filmmaking-studio').Set

module.exports = class IntroSet extends Set

	constructor: ->

		super

		@id = 'audio'

		el = @film.theatre.model.audio.set window.postBase + '/audio/narration.mp3'

		# if window.navigator.userAgent.match /Trident/

		# 	# IE gives a weired 2 second delay. Gotta figure out why
		# 	@film.theatre.model.audio.setOffset 2000

		# else if window.navigator.userAgent.match /Gecko\//

		# 	@film.theatre.model.audio.setOffset 0


		# @film.theatre.model.audio.setOffset 400

		@film.loader.loadAudio el, 2960142

		return