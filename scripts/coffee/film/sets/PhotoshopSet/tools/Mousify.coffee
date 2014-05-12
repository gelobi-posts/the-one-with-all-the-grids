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

	_recalculate: ->

		for fn, i in @_recalculators

			prev = @_steps[i]
			fn = fn(prev)

			@_steps[i + 1] =

				x: prev.x + fn.x
				y: prev.y + fn.y

		@_steps[i + 1] = {x:0, y:0}

		@move @_now

		return

	move: (i) ->

		index = i | 0
		progress = i - index

		before = @_steps[index]
		after = @_steps[index + 1]

		@el.x  before.x + progress * (after.x - before.x)
		@el.y before.y + progress * (after.y - before.y)

		@_now = i
