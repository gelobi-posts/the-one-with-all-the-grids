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