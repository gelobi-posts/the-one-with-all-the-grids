module.exports = class Mousify

	constructor: (@el, @film, @groupName, @actorName) ->

		do @_addToTheatre
		do @_defineVars

	_addToTheatre: ->

		@objName = String(@groupName + ' ' + @actorName).replace(/\s+/g, '-').toLowerCase()

		@actor = @film.theatre.model.graph.getGroup @groupName
		.getActor @actorName

		@film.theatre.timeline.addObject @objName, @

		@actor.addPropOfObject 'Move', @objName, 'move', 0
		@actor.addPropOfObject 'Change Base Position', @objName, 'changeBase', 0

		return

	_defineVars: ->

		@_margins = [0, 0]
		@_basePositions = [0, 0]
		@_baseIndex = new Float32Array 1
		@_pos = new Float32Array 2

		return

	addMargin: (marginX, marginY) ->

		@_margins.push marginX
		@_margins.push marginY

		return

	addBasePosition: (baseX, baseY) ->

		@_basePositions.push baseX
		@_basePositions.push baseY

		return

	move: (i) ->

		index = 2 * (i | 0)
		fract = i % 1

		@_pos[0] = @_basePositions[@_baseIndex ] + fract * (@_margins[index + 2] - @_margins[index])
		@_pos[1] = @_basePositions[@_baseIndex + 1] + fract * (@_margins[index + 3] - @_margins[index + 1])

		do @_move

	changeBase: (@_baseIndex) ->

	_move: ->

		@el.x @_pos[0]
		@el.y @_pos[1]

		return