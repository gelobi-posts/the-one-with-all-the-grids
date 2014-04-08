Set = require('tiny-filmmaking-studio').Set

module.exports = class IntroSet extends Set

	constructor: ->

		super

		container = @_makeEl '#intro-container.container'
		.inside @film.display.stageEl

		@id = 'intro'

		introText = @_makeEl '#intro-text'
		.html '<span>this is an interactive movie made of divs, css, webgl, <br> and no &lt;video&gt; tags.</span>'
		.css

			fontSize: "34px"
			lineHeight: "57px"

		.inside container

		@_setupDomEl 'Intro', 'The Text', introText, [
			'opacity', 'scale', 'translation', 'rotation', 'wysihwyg'
		]

		overlay = @_makeEl '#intro-overlay'
		.inside container
		.z 1

		@_setupDomEl 'Intro', 'Overlay', overlay, [
			'opacity', 'scale', 'wysihwyg'
		]