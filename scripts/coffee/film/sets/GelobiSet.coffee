Set = require('tiny-filmmaking-studio').Set

module.exports = class GelobiSet extends Set

	constructor: ->

		super

		@id = 'gelobi'

		@container = @film.sets['moreTools'].container

		@gelobi = @_makeEl '.gelobi-gelobi'
		.html 'gelobi'
		.z 3
		.inside @container

		@_setupDomEl 'Gelobi', 'gelobi', @gelobi, ['x', 'y', 'scaleAll', 'opacity']

		@questionMark = @_makeEl '.gelobi-questionMark'
		.inside @container
		.z 1
		.html '?'

		@_setupDomEl 'Gelobi', 'Question Mark', @questionMark, ['x', 'opacity']

		@aPlace = @_makeEl '.gelobi-aPlace'
		.inside @container
		.html 'a place (blog) to experiment with the web'
		.z 1

		@_setupDomEl 'Gelobi', 'A Place', @aPlace, ['x', 'scaleAll', 'opacity']


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