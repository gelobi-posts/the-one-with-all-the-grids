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

		for v, i in @_values

			p = @_lengths[i - 1] || 0
			@_lengths[i] = p + v.length

	focusOn: (index) ->

		document.activeElement.blur()

		@_inputs[index].focus()

	type: (progress) ->

		for l, i in @_lengths

			if progress < l

				index = progress % @_lengths[i]

				break

		value = @_values[i].substring(0, index)

		console.log value









