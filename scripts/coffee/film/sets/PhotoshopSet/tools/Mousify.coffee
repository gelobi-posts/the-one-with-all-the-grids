module.exports = class Mousify

	constructor: (@n, @film, @groupName, @actorName) ->

		do @_addToTheatre
		do @_defineVars

	_addToTheatre: ->

		@objName = String(@groupName + ' ' + @actorName).replace(/\s+/g, '-').toLowerCase()

		@actor = @film.theatre.model.graph.getGroup @groupName
		.getActor @actorName

		@film.theatre.timeline.addObject @objName, @

		@actor.addPropOfObject 'Move to X', @objName, 'moveToX', 0
		@actor.addPropOfObject 'Move to Y', @objName, 'moveToY', 0
		@actor.addPropOfObject 'Move on Element', @objName, 'moveOnEl', 0

		return

	_defineVars: ->

		@_elements = []
		@_pos = new Float32Array 2

	addElements: (elements) ->

		@_elements[0] = document.body

		for el in elements

			@_elements.push el

		return

	moveToX: (x) ->

		return

	moveToY: (y) ->

		return

	moveOnEl: (index) ->

		el = @_elements[index]



		return