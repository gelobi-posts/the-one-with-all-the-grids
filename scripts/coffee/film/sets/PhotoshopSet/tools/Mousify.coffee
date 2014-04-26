module.exports = class Mousify

	constructor: (@el, @film, @groupName, @actorName, @_recalculators) ->

		do @_addToTheatre
		do @_defineVars
		do @_recalculate

		document.addEventListener 'resize', =>

			do @_recalculate

	_addToTheatre: ->

		@objName = String(@groupName + ' ' + @actorName).replace(/\s+/g, '-').toLowerCase()

		@actor = @film.theatre.model.graph.getGroup @groupName
		.getActor @actorName

		@film.theatre.timeline.addObject @objName, @

		@actor.addPropOfObject 'Move', @objName, 'move', 1

		return

	_defineVars: ->

		@_steps = [{x: 0, y: 0}]

	_recalculate: ->

		for fn, i in @_recalculators

			@_steps[i + 1] = fn()

		console.log @_steps

		return

	move: (i) ->

		index = i | 0
		fract = i - index

		before = @_steps[index - 1]
		after = @_steps[index]

		@el.x before.x + fract * (after.x - before.x)
		@el.y before.y + fract * (after.y - before.y)
