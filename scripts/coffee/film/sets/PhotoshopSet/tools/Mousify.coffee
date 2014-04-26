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

		return

	_defineVars: ->

		@_margins = [0, 0]
		@_basePositions = [0, 0]

		@_pos = new Float32Array 2
		@_margin = new Float32Array 2

		return

	move: (i) ->

		index = i | 0
		fract = i - index

		@_pos[0] =  fract * @_margins[index]
		@_pos[1] = fract * @_margins[index + 1]

		do @_move

	_move: ->

		@el.x @_pos[0]
		@el.y @_pos[1]

		return