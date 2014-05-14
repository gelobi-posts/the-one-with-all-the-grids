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

		do @_setupFocus

	_setupView: ->

		obj =

			progress: (prog) =>

				@view.rotateX -45 * prog

				return

		@_setupObject 'Instructions', 'View', obj, ['progress']

	_setupScroll: ->

		@_scrollProg = 0

		articleNode = document.querySelector '.article'

		return unless articleNode?

		@_article = @_makeEl articleNode
		.z -1
		@_dai = @_makeEl document.getElementById 'downloadAndInstall'

		@_centralPoint = 0

		@_onTime 10001, => do @_calculateDaiCenter

		@_setupObject 'Instructions', 'Scroll', @, ['scrollToInstructions']

		window.addEventListener 'resize', => do @_scroll

	_calculateDaiCenter: ->

			@_article.y 0

			dims = @_dai.node.getBoundingClientRect()

			@_centralPoint = parseInt (window.scrollY or window.pageYOffset) + dims.top + ((dims.bottom - dims.top) / 2)

	scrollToInstructions: (prog) ->

		# return if @_scrollProg is prog

		@_scrollProg = prog

		do @_scroll

	_scroll: ->

		targetPoint = (window.scrollY or window.pageYOffset) + (window.innerHeight * 11 / 16)

		diff = @_centralPoint - targetPoint

		@_article.y -diff * @_scrollProg

	_setupFocus: ->

		@_lastFocusProg = 0

		@_setupObject 'Instructions', 'Focus', @, ['setFocus']

	setFocus: (prog) ->

		return if prog is @_lastFocusProg

		@_lastFocusProg = prog

		if prog isnt 0

			@_article.addClass 'focusOnDownloadAndInstall'

		else

			@_article.removeClass 'focusOnDownloadAndInstall'

		return