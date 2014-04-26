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
		@_elPos = new Float32Array 2

		@_elements[0] = document.body

	addElement: (el) ->

		@_elements.push el

	moveX: (x) ->

		@_pos[0] = @_elPos[0] + x

		do @_move

	moveY: (y) ->

		@_pos[1] = @_elPos[1] + y

		do @_move

	moveOnEl: (index) ->

		dest = @_elements[Math.ceil(index)].getBoundingClientRect()
		frac = index % 1

		if frac is 0

			@_pos[0] = @_elPos[0] = dest.left + .5 * dest.width
			@_pos[1] = @_elPos[1] = dest.top + .5 * dest.height

		else

			@_pos[0] = @_elPos[0] + frac * (dest.left + .5 * dest.width - @_elPos[0])
			@_pos[1] = @_elPos[1] + frac * (dest.top + .5 * dest.height - @_elPos[1])

		do @_move

	_move: ->

		@el.x @_pos[0]
		@el.y @_pos[1]

		return