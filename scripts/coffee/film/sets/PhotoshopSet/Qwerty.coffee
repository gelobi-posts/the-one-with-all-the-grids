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
		@actor.addPropOfObject 'Focus', @objName, 'focusOn', 0

	_defineVars: ->

		@_inputs = []
		@_values = []
		@_lengths = []
		@_totalLength = 0
		@_index = 0

		@_inputs.push document.body

		return

	addInputs: (inputs) ->

		for i in inputs

			@_inputs.push i

		return

	addValues: (@_values) ->

		@_lengths[0] = 0

		for i in [1..@_values.length]

			@_lengths[i] = @_lengths[i - 1] + @_values[i - 1].length

		@_totalLength = @_lengths.length

		return

	focusOn: (index) ->

		@_index = index|0

		document.activeElement.blur()

		@_inputs[@_index].focus()

		return

	type: (progress) ->

		if @_index is 0 then return

		progress = progress|0

		for i in [1..@_totalLength]

			if progress <= @_lengths[i]

				index = progress - @_lengths[i - 1]

				break

		@_inputs[@_index].value = @_values[i - 1].substring(0, index)

		return









