module.exports = class Classify

	constructor: ->

		@_current = 0

	addElement: (@_el) ->

	addClasses: (@_classes) ->

	setTo: (to) ->

		@_el.classList.remove "#{@_classes[@_current]}"

