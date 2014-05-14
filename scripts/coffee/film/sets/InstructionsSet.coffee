Set = require('tiny-filmmaking-studio').Set

module.exports = class InstructionsSet extends Set

	constructor: ->

		super

		@id = 'instructions'

		@view = @film.display.view

		@view
		.perspective 1200

		@_onTime 1, =>

			if @film?.display?.fullscreen?

				do @film.display.fullscreen

		do @_setupView

	_setupView: ->

		z = new Float32Array [0, -600]
		rotationX = new Float32Array [0, -20]
		y = new Float32Array [0, -300]

		obj =

			progress: (prog) =>

				# @view.z -800 * prog
				# @view.y -300 * prog
				@view.rotateX -45 * prog

				return

		@_setupObject 'Instructions', 'View', obj, ['progress']

		rects = []

		@_onTime 11000, ->

			console.log 'hi', Math.random()

