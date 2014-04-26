module.exports = class Mousify

	constructor: (@el, @film, @groupName, @actorName, @_recalculators) ->

		do @_addToTheatre
		do @_defineVars
		do @_recalculate

		window.addEventListener 'resize', => do @_recalculate

	_addToTheatre: ->

		@objName = String(@groupName + ' ' + @actorName).replace(/\s+/g, '-').toLowerCase()

		@actor = @film.theatre.model.graph.getGroup @groupName
		.getActor @actorName

		@film.theatre.timeline.addObject @objName, @

		@actor.addPropOfObject 'Move', @objName, 'move', 0

		return

	_defineVars: ->

		@_steps = [{x: 0, y: 0}]
		@_now = 1
		@_length = @_recalculators.length

	_recalculate: ->

		for fn, i in @_recalculators

			@_steps[i + 1] = fn()

		@move @_now

		return

	move: (i) ->

		index = i | 0
		fract = i - index

		if i is @_length

			x = @_steps[index].x
			y = @_steps[index].y

		else

			before = @_steps[index]
			after = @_steps[index + 1]

			x =  before.x + fract * (after.x - before.x)
			y = before.y + fract * (after.y - before.y)

		@el.x x
		@el.y y

		@_now = i
