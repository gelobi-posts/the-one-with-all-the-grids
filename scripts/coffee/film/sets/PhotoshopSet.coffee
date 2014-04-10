Set = require('tiny-filmmaking-studio').Set

module.exports = class IntroSet extends Set

	constructor: ->

		super

		@id = 'photoshop'

		container = @_makeEl '#photoshop-container'
		.inside @film.display.stageEl

		tools = @_makeEl '#photoshop-tools'
		.inside container

		layers = @_makeEl '#photoshop-layers'
		.inside container


