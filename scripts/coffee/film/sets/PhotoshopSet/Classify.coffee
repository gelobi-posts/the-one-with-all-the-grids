module.exports = class Classify

	constructor: (@film, @groupName, @actorName) ->

		do @_addToTheatre
		do @_defineVars

	_addToTheatre: ->

		@objName = String(@groupName + ' ' + @actorName).replace(/\s+/g, '-').toLowerCase()

		@actor = @film.theatre.model.graph.getGroup @groupName
		.getActor @actorName

		@film.theatre.timeline.addObject @objName, @

		@actor.addPropOfObject 'Set To', @objName, 'setTo', 0

		return

	_defineVars: ->

		@_current = 0
		@_length = 0
		@_classes = []

		return

	addElement: (@_el) ->

	addClasses: (@_classes) ->

		@_length = @_classes.length

		return

	setTo: (to) ->

		intTo = to | 0
		fracTo = parseInt( ( to % 1 ).toPrecision(1) * 10) / 10

		intTo = intTo % @_length

		unless @_classes is []

			@_el.classList.remove "#{@_classes[@_current]}"

			@_el.classList.add "#{@_classes[intTo]}"

		if  .33 <= fracTo < .66

			@_el.classList.add 'hover'
			@_el.classList.remove 'active'

		else if .66 <= fracTo

			@_el.classList.add 'hover'
			@_el.classList.add 'active'

		else

			@_el.classList.remove 'hover'
			@_el.classList.remove 'active'

		@_current = intTo

		return
