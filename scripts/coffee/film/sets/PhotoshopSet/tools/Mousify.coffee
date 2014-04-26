module.exports = class Mousify

	constructor: (@el, @film, @groupName, @actorName) ->

		do @_addToTheatre
		do @_defineVars

	_addToTheatre: ->

		@objName = String(@groupName + ' ' + @actorName).replace(/\s+/g, '-').toLowerCase()

		@actor = @film.theatre.model.graph.getGroup @groupName
		.getActor @actorName

		@film.theatre.timeline.addObject @objName, @

		@actor.addPropOfObject 'Move X', @objName, 'moveX', 0
		@actor.addPropOfObject 'Move Y', @objName, 'moveY', 0
		@actor.addPropOfObject 'Move on Element', @objName, 'moveOnEl', 0

		return

	_defineVars: ->

		@_elements = []
		@_pos = new Float32Array 2

		@_elements[0] = document.body

	addElements: (elements) ->

		for el in elements

			@_elements.push el

		return

	moveX: (x) ->

		@_pos[0] += x

		do @_move

	moveY: (y) ->

		@_pos[1] += y

		do @_move

	moveOnEl: (index) ->

		c = @_elements[index].getBoundingClientRect()

		@_pos[0] = c.left + .5 * c.width
		@_pos[1] = c.top + .5 * c.height

		do @_move

	_move: ->

		@el.x @_pos[0]
		@el.y @_pos[1]

		return