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

		for v, i in @_values

			@_lengths[i] = @_lengths[i - 1] + v.length

		@_totalLength = @_lengths[@_lengths.length - 1]

		return

	focusOn: (index) ->

		document.activeElement.blur()

		@_inputs[index].focus()

	type: (progress) ->

		for i in []

			if progress <= l

				index = progress % @_lengths[i - 1]

				break

		value = @_values[i].substring(0, index)

		console.log value









