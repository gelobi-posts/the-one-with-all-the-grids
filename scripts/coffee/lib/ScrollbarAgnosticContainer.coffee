El = require 'stupid-dom-interface'

module.exports = class ScrollbarAgnosticContainer

	constructor: (node, @vertical = yes, @horizontal = no) ->

		@scrollbarLength = self.getScrolbarLength()

		@el = El node

		do @_redim

		window.addEventListener 'resize', => do @_redim

	_redim: ->

		if @vertical

			@el.width window.innerWidth - @scrollbarLength

		if @horizontal

			@el.height window.innerHeight - @scrollbarLength

		return

	@_scrollbarLength: null

	@getScrolbarLength: ->

		unless self._scrollbarLength?

			self._scrollbarLength = self._determineScrollbarLength()

		self._scrollbarLength

	@_determineScrollbarLength: ->

		container = El 'div'
		.width 200
		.height 200
		.css

			position: 'absolute'
			overflowY: 'scroll'
			overflowX: 'hidden'

		.inside document.body

		filler = El 'div'
		.css

			width: '100%'
			height: '100%'
			position: 'absolute'

		.inside container

		scrollbarLength = 200 - filler.node.clientWidth

		container.detach()

		return scrollbarLength

	self = @