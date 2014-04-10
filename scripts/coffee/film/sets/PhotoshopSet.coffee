Set = require('tiny-filmmaking-studio').Set

module.exports = class IntroSet extends Set

	constructor: ->

		super

		@id = 'photoshop'

		bg = @_makeEl '#photoshop-bg'
		.inside @film.display.stageEl
