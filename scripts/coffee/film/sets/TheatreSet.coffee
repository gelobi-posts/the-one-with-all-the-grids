Set = require('tiny-filmmaking-studio').Set

module.exports = class TheatreSet extends Set

	constructor: ->

		super

		@id = "theatre"

		@container = @makeSetContainer([166000])
		.set 'id', 'theatre-container'

		do @_prepareTypography

		do @_prepareBrowserMockup

		do @_prepareFakeTheatre

		do @_prepareTheBall

	_prepareTypography: ->

		@_theatreTypo = @_makeEl '#theatre-theatre-typo'
		.html 'theatre'
		.inside @container

		@_setupDomEl 'Theatre', 'Theatre Typo', @_theatreTypo, ['opacity', 'translation']

		@_JsTypo = @_makeEl '#theatre-js-typo'
		.html 'js'
		.inside @container

		@_setupDomEl 'Theatre', 'Js Typo', @_JsTypo, ['opacity', 'scaleAll', 'translation']

		@_tool = @_makeEl '#theatre-animation-tool-typo'
		.html 'Web-based Animation Tool'
		.inside @container

		@_setupDomEl 'Theatre', 'Animation Tool Typo', @_tool, ['opacity']

		@_html = @_makeEl '#theatre-html-typo'
		.html 'HTML Elements,'
		.inside @container

		@_setupDomEl 'Theatre', 'HTML Elements Typo', @_html, ['opacity', 'scaleAll', 'translation']

		@_webgl = @_makeEl '#theatre-webgl-typo'
		.html 'WebGL Buffers,'
		.inside @container

		@_setupDomEl 'Theatre', 'WebGL typo', @_webgl, ['opacity', 'scaleAll', 'translation']

		@_threejs = @_makeEl '#theatre-threejs-typo'
		.html 'Three.js Objects'
		.inside @container

		@_setupDomEl 'Theatre', 'ThreeJS Typo', @_threejs, ['opacity', 'scaleAll', 'translation']

		@_anyKind = @_makeEl '#theatre-any-kind-typo'
		.html 'any Kind of Javascript Variable'
		.inside @container

		@_setupDomEl 'Theatre', 'Any Kind of Typo', @_anyKind, ['opacity', 'scaleAll', 'translation']

	_prepareBrowserMockup: ->

		@_browserMockup = @_makeEl '#theatre-browserMockup'
		.html """

			<div id="theatre-browserMockup-head">

				<div class="theatre-browserMockup-head-winButton n1"></div>
				<div class="theatre-browserMockup-head-winButton n2"></div>
				<div class="theatre-browserMockup-head-winButton n3"></div>

			</div>

			"""
		.inside @container

		@browserViewport = @_makeEl "#theatre-browserViewport"
		.inside @_browserMockup

		@_setupDomEl 'Theatre', 'Browser Viewport', @browserViewport, [
			'opacity'
		]

		@_setupDomEl 'Theatre', 'Browser Mockup', @_browserMockup, [
			'opacity'
		]

	_prepareFakeTheatre: ->

		@fakeTheatre = @_makeEl '#theatre-fakeTheatre'
		.inside @browserViewport

		@_setupDomEl 'Theatre', 'Fake Theatre', @fakeTheatre, [
			'opacity'
		]

	_prepareTheBall: ->

		@theBall = @_makeEl '#theatre-theBall'
		.inside @browserViewport

		@_setupDomEl 'Theatre', "The Ball", @theBall, [
			'translation', 'scale'
		]