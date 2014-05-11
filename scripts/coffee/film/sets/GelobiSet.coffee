Set = require('tiny-filmmaking-studio').Set

module.exports = class GelobiSet extends Set

	constructor: ->

		super

		@id = 'gelobi'

		@container = @film.sets['moreTools'].container

		@questionMark = @_makeEl '.gelobi-questionMark'
		.inside @container
		.html '?'


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

		el = @_makeEl ".gelobi-#{pref}.gelobi-#{pref}-#{ident}"
		.html word
		.inside @linesContainer
		.z 1

		name = ident[0].toUpperCase() + ident.substr(1, ident.length)

		@_setupDomEl groupName, name, el, props

		return