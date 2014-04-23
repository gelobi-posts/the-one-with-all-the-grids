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

		griddify = @_makeEl '#intro-griddify'
		.html 'Griddify'
		.inside @container

		@_setupDomEl 'Intro', "Griddify", griddify, [
			'opacity', 'translation', 'wysihwyg'
		]

		gelobiContainer = @_makeEl '#intro-gelobiContainer'
		.inside @container

		@_setupDomEl 'Intro', 'Gelobi Container', gelobiContainer, [
			'opacity', 'translation'
		]

		for letter, i in 'gelobi'

			el = @_makeEl '#intro-gelobiContainer-' + letter + '.letter'
			.html letter
			.inside gelobiContainer

			@_setupDomEl 'Intro', 'Gelobi Letter ' + letter, el, [
				'opacity', 'translation'
			]

		return