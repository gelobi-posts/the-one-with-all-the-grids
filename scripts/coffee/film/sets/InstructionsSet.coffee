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

		do @_setupScroll

	_setupView: ->

		obj =

			progress: (prog) =>

				@view.rotateX -45 * prog

				return

		@_setupObject 'Instructions', 'View', obj, ['progress']

	_setupScroll: ->

		@_scrollProg = 0

		@_dai = @_makeEl document.getElementById 'downloadAndInstall'
		@_article = @_makeEl document.querySelector '.article'

		@_centralPoint = 0

		# @_winHeight = window.innerHeight

		# @_scrollTop = parseInt (window.scrollY or window.pageYOffset)

		@_onTime 11000, => do @_calculateDaiCenter

		# window.addEventListener 'resize', ->

		# 	winHeight = window.innerHeight

	_calculateDaiCenter: ->

			@_article.y 0

			dims = @_dai.node.getBoundingClientRect()

			@_centralPoint = parseInt (window.scrollY or window.pageYOffset) + dims.top + ((dims.bottom - dims.top) / 2)

	scrollToInstructions: (prog) ->

		return if @_scrollProg is prog

		@_scrollProg = prog

		do @_scroll

	_scroll: ->

		targetPoint = (window.scrollY or window.pageYOffset) + (window.innerHeight * 3 / 4)

		currentPoint = @_centralPoint