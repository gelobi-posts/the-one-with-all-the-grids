module.exports = class Mousify

	constructor: (@el, @film, @groupName, @actorName, @_recalculators) ->

		do @_addToTheatre
		do @_defineVars
		do @_recalculate

		document.addEventListener 'resize', => do @_recalculate

	_addToTheatre: ->

		@objName = String(@groupName + ' ' + @actorName).replace(/\s+/g, '-').toLowerCase()

		@actor = @film.theatre.model.graph.getGroup @groupName
		.getActor @actorName

		@film.theatre.timeline.addObject @objName, @

		@actor.addPropOfObject 'Move', @objName, 'move', 0

		return

	_defineVars: ->

		@_steps = []

	_recalculate: ->

		for fn in @_recalculators

			@_steps.push(fn())

	move: (i) ->

		index = i | 0
		fract = i - index

		@el.x @_steps[index].x + fract * @_steps[index + 1].x
		@el.y @_steps[index].y + fract * @_steps[index + 1].y
