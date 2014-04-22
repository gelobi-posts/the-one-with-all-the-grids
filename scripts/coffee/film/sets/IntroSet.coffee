Set = require('tiny-filmmaking-studio').Set

module.exports = class IntroSet extends Set

	constructor: ->

		super

		@container = @film.display.makeSetContainer()
		.set 'id', 'intro-container'