Set = require('tiny-filmmaking-studio').Set

module.exports = class MoreToolsSet extends Set

	constructor: ->

		super

		@id = 'moreTools'

		@container = @makeSetContainer([125000, 150000])
		.set 'id', 'moreTools-container'

		@linesContainer = @_makeEl '.moreTools-lines'
		.inside @container

		@_createWords ['MORE', 'TOOLS', 'IN', 'THE', 'WORKS'], 'line1'

		# @line2 = @_makeEl '.moreTools-line2'
		# .html 'photoshop panels, web-based tools, nodejs packages, among other things'
		# .inside @container
		# .y -50

	_createWords: (words, pref) ->

		for word in words

			@_createWord word, pref

		return

	_createWord: (word, pref) ->

		@_makeEl ".moreTools-#{pref}.moreTools-#{pref}-#{word.toLowerCase()}"
		.html word
		.inside @linesContainer

		return