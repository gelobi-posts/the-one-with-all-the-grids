module.exports = class Qwerty

	constructor: (@film, @groupName, @actorName) ->

		do @_addToTheatre
		do @_defineVars

	_addToTheatre: ->

		@objName = String(@groupName + ' ' + @actorName).replace(/\s+/g, '-').toLowerCase()

		@actor = @film.theatre.model.graph.getGroup @groupName
		.getActor @actorName

		@film.theatre.timeline.addObject @objName, @

		@actor.addPropOfObject 'Type', @objName, 'type', 0
		@actor.addPropOfObject 'Focus', @objName, 'focus', 0

		return

	_defineVars: ->

		@_values = []
		@_lengths = []
		@_totalLength = 0

		return

	addInput: (@_input) ->

	addValues: (@_values) ->

		@_lengths[0] = 0

		for i in [1..@_values.length]

			@_lengths[i] = @_lengths[i - 1] + @_values[i - 1].length

		@_totalLength = @_lengths.length

		return

	focus: (state) ->

		if state is 1 then @_input.focus() else @_input.blur()

		return

	type: (progress) ->

		unless @_values? then return

		progress = progress|0

		for i in [1..@_totalLength]

			if progress <= @_lengths[i]

				index = progress - @_lengths[i - 1]

				break

		@_input.value = @_values[i - 1].substring(0, index)

		return









