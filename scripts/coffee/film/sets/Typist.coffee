module.exports = class Typist

	constructor: (object) ->

		do @_defineVars

	_defineVars: ->

		@_inputs = []
		@_values = []
		@_lengths = []

		@_inputs.push document.body

		return

	addInputs: (@_inputs) ->

	addValues: (@_values) ->

		@_lengths[0] = 0

		for v, i in @_values

			@_lengths[i + 1] = @_lengths[i] + v.length

	focusOn: (index) ->

		document.activeElement.blur()

		@_inputs[index].focus()

	type: (progress) ->

		for l, i in @_lengths

			if progress <= l

				index = progress % @_lengths[i - 1]

				break

		value = @_values[i].substr(0, index)

		console.log value









