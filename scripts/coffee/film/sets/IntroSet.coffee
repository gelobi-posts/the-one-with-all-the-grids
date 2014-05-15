Set = require('tiny-filmmaking-studio').Set

module.exports = class IntroSet extends Set

	constructor: ->

		super

		@id = 'intro'

		@container = @makeSetContainer([100, 30000])
		.set 'id', 'intro-container'

		im = @_makeEl '#intro-im'
		.html 'Aria Minaei'
		.inside @container

		@_setupDomEl 'Intro', "I'm", im, [
			'opacity', 'translation'
		]

		griddify = @_makeEl '#intro-griddify'
		.html 'Griddify'
		.inside @container

		@_setupDomEl 'Intro', "Griddify", griddify, [
			'opacity', 'scaleAll'
		]

		# aft = ['', '', ' 1', ' 1', ' 2', ' 2', '', '']

		# for letter, i in 'Griddify'

		# 	el = @_makeEl '.letter'
		# 	.html letter
		# 	.inside griddify

			# @_setupDomEl 'Intro', 'Griddify Letter ' + letter + aft[i], el, [
			# 	'opacity', 'translation'
			# ]

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