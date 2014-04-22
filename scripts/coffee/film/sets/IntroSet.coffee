Set = require('tiny-filmmaking-studio').Set

module.exports = class IntroSet extends Set

	constructor: ->

		super

		@container = @film.display.makeSetContainer()
		.set 'id', 'intro-container'

		im = @_makeEl '#intro-im'
		.html 'Aria Minaei'
		.inside @container

		@_setupDomEl 'Intro', "I'm", im, [
			'opacity', 'translation', 'wysihwyg'
		]

		gelobiContainer = @_makeEl '#intro-gelobiContainer'
		.inside @container

		@_setupDomEl 'Intro', 'Gelobi Container', gelobiContainer, [
			'opacity', 'translation'
		]

		for letter in 'gelobi'

			console.log letter