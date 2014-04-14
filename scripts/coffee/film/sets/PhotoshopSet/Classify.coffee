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

		return

	addElement: (@_el) ->

	addClasses: (@_classes) ->

		@_length = @_classes.length

		return

	setTo: (to) ->

		intTo = to | 0
		fracTo = to % 1

		intTo = intTo % @_length

		@_el.classList.remove "#{@_classes[@_current]}"

		@_el.classList.add "#{@_classes[intTo]}"

		if fracTo is .5 then @_el.classList.add 'hover' else @_el.classList.remove 'hover'

		@_current = intTo

		return
