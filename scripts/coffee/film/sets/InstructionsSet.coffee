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

		dai = @_makeEl document.getElementById 'downloadAndInstall'
		article = @_makeEl document.querySelector '.article'

		targetPoint = 0

		winHeight = window.innerHeight

		window.addEventListener 'resize', ->

			winHeight = window.innerHeight

		@_onTime 11000, ->

			dims = dai.node.getBoundingClientRect()

			targetPoint = parseInt (window.scrollY or window.pageYOffset) + dims.top + (dims.height / 2)

			targetTop = targetPoint - (winHeight * 3 / 4)

		obj =

			progress: (prog) =>

				@view.rotateX -45 * prog

				return

		@_setupObject 'Instructions', 'View', obj, ['progress']

	scrollToInstructions: (prog) ->

