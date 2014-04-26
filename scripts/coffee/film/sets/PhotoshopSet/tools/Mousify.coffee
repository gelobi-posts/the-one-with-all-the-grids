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
		@_pos = new Float32Array 2

	addMargin: (marginX, marginY) ->

		@_margins.push marginX
		@_margins.push marginY

	addBasePosition: (baseX, baseY) ->

		@_basePositions.push baseX
		@_basePositions.push baseY

	move: (i) ->

		index = 2 * (i | 0)
		fract = i % 1

		@_pos[0] = @_basePositions[index] + fract * (@_margins[index + 2] - @_margins[x])
		@_pos[1] = @_basePositions[index + 1] + fract * (@_margins[index + 3] - @_margins[x + 1])

	changeBase: (i) ->

	_move: ->

		@el.x @_pos[0]
		@el.y @_pos[1]