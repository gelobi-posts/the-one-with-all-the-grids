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
		@_fMargin = new Float32Array 2
		@_vMargin = new Float32Array 2
		@_elPos = new Float32Array 2

		@_elements[0] = document.body

	addElement: (el) ->

		@_elements.push el

	moveX: (x) ->

		@_fMargin[0] = x

		do @_move

	moveY: (y) ->

		@_fMargin[1] = y

		do @_move

	moveOnEl: (index) ->

		frac = index % 1

		if frac is 0

			dest = @_elements[index].getBoundingClientRect()
			@_elPos[0] = dest.left + .5 * dest.width
			@_elPos[1] = dest.top + .5 * dest.height

		else

			f = @_elements[Math.floor(index)].getBoundingClientRect()
			c = @_elements[Math.ceil(index)].getBoundingClientRect()

			@_vMargin[0] = frac * (c.left + .5 * c.width - f.left + .5 * f.width)
			@_vMargin[1] = frac * (c.top + .5 * c.height - f.top + .5 * f.height)

		do @_move

	_move: ->

		@el.x @_elPos[0] + @_fMargin[0] + @_vMargin[0]
		@el.y @_elPos[1] + @_fMargin[1] + @_vMargin[1]

		return