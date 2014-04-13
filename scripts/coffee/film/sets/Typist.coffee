module.exports = class Typist

	constructor: (object) ->

		do @_defineVars

	_defineVars: ->

		@_inputs = []
		@_values = []
		@_lengths = []
		@_totalLength = 0

		@_inputs.push document.body

		return

	addInputs: (@_inputs) ->

		return

	addValues: (@_values) ->

		@_lengths[0] = 0

		for i in [1..@_values.length]

			@_lengths[i] = @_lengths[i - 1] + @_values[i - 1].length

		@_totalLength = @_lengths.length

		return

	focusOn: (index) ->

		document.activeElement.blur()

		@_inputs[index].focus()

		return

	type: (progress) ->

		for i in [1..@_totalLength]

			if progress <= @_lengths[i]

				index = progress - @_lengths[i - 1]

				break

		value = @_values[i - 1].substring(0, index)

		console.log value

		return









