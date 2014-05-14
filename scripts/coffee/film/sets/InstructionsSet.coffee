Set = require('tiny-filmmaking-studio').Set

module.exports = class InstructionsSet extends Set

	constructor: ->

		super

		@id = 'instructions'

		@view = @film.display.view

		@view.perspective 800

		@_setupDomEl 'Instructions', 'View', @view, ['z', 'rotationX']

		@_onTime 1, =>

			@film.display