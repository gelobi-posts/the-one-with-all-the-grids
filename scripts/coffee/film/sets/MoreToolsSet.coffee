Set = require('tiny-filmmaking-studio').Set

module.exports = class MoreToolsSet extends Set

	constructor: ->

		super

		@id = 'moreTools'

		@container = @makeSetContainer([125000, 190000])
		.set 'id', 'moreTools-container'
		.z 2

		@linesContainer = @_makeEl '.moreTools-lines'
		.z 1
		.inside @container

		@_setupDomEl 'More Tools', 'Lines Container', @linesContainer, ['x', 'y', 'scaleAll']

		@_createWords [
			'MORE', 'TOOLS', 'IN', 'THE', 'WORKS'
			], 'line1', 'More Tools - 1', ['opacity', 'x', 'scaleAll']

		@_createWords [
			'photoshop', 'panels,', 'web', '-based', 'tools,', 'nodejs',
			'packages,', 'among', 'other', 'things'
			], 'line2', 'More Tools - 2', ['opacity', 'x', 'scaleAll']

		@_createWords [
			'demoes', 'in', 'the', 'coming', 'weeks,', 'right',
			'here', 'in'
			], 'line3', 'More Tools - 3', ['opacity', 'x', 'scaleAll']



	_createWords: (words, pref, groupName, props) ->

		said = []

		for word in words

			ident = word.toLowerCase().replace(/[^a-zA-Z0-9]+/g, '')

			if ident in said

				i = 1

				loop

					i++

					newIdent = String("#{ident}-#{i}")

					break unless newIdent in said

				ident = newIdent

			said.push ident

			@_createWord word, pref, ident, groupName, props

		return

	_createWord: (word, pref, ident, groupName, props) ->

		el = @_makeEl ".moreTools-#{pref}.moreTools-#{pref}-#{ident}"
		.html word
		.inside @linesContainer
		.z 1

		name = ident[0].toUpperCase() + ident.substr(1, ident.length)

		@_setupDomEl groupName, name, el, props

		return