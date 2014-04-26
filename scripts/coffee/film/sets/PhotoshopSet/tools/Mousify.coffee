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

		@_margins = []
		@_basePositions = [0, 0]

		@_elements[0] = document.body

	addMargin: (marginX, marginY) ->

		@_margins.push marginX
		@_margins.push marginY

	addBasePosition: (baseX, baseY) ->

		@_basePositions.push baseX
		@_basePositions.push baseY

	moveX: (x) ->

		@_margin[0] = x

		do @_move

	moveY: (y) ->

		@_margin[1] = y

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

			x = f.left + .5 * f.width
			y = f.top + .5 * f.height

			@_elPos[0] = x + frac * (c.left + .5 * c.width - x)
			@_elPos[1] = y + frac * (c.top + .5 * c.height - y)

		do @_move

	_move: ->

		@el.x @_elPos[0] + @_margin[0]
		@el.y @_elPos[1] + @_margin[1]

		return