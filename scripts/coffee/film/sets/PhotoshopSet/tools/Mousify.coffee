module.exports = class Mousify

	constructor: (@el, @film, @groupName, @actorName, @_recalculators) ->

		do @_addToTheatre
		do @_defineVars

		window.addEventListener 'resize', => do @_recalculate

	_addToTheatre: ->

		@objName = String(@groupName + ' ' + @actorName).replace(/\s+/g, '-').toLowerCase()

		@actor = @film.theatre.model.graph.getGroup @groupName
		.getActor @actorName

		@film.theatre.timeline.addObject @objName, @

		@actor.addPropOfObject 'Move', @objName, 'move', 0

		return

	_defineVars: ->

		@_margins = [0, 0]
		@_basePositions = [500, 500]
		@_baseIndex = new Float32Array 1

		@_pos = new Float32Array 2
		@_margin = new Float32Array 2

		return

	addMargin: (marginX, marginY) ->

		l = @_margins.length

		@_margins.push marginX
		@_margins.push marginY

		return

	addBasePosition: (baseX, baseY) ->

		@_basePositions.push baseX
		@_basePositions.push baseY

		return

	move: (i) ->

		index = 2 * Math.ceil(i)
		fract = i % 1

		if fract is 0 then fract = 1

		@_margin[0] = @_margins[index - 2] + fract * @_margins[index]
		@_margin[1] = @_margins[index - 1] + fract * @_margins[index + 1]

		do @_move

	_move: ->

		@el.x @_basePositions[@_baseIndex] + @_margin[0]
		@el.y @_basePositions[@_baseIndex + 1] + @_margin[1]

		return