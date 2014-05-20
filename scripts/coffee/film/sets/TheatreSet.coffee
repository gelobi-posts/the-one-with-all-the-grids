Set = require('tiny-filmmaking-studio').Set

module.exports = class TheatreSet extends Set

	constructor: ->

		super

		@id = "theatre"



		do @_prepareTypography

		do @_prepareBrowserMockup

		do @_prepareFakeTheatre

		do @_prepareTheBall

		do @_prepareMore

	_prepareTypography: ->

		@typoContainer = @makeSetContainer([166000, 183000])
		.attr 'id', 'theatre-typoContainer'
		.zIndex -50
		.z 5

		@_theatreTypo = @_makeEl '#theatre-theatre-typo'
		.html 'theatre'
		.inside @typoContainer
		.z 1

		@_setupDomEl 'Theatre', 'Theatre Typo', @_theatreTypo, ['opacity', 'x']

		@_JsTypo = @_makeEl '#theatre-js-typo'
		.html 'js'
		.inside @typoContainer
		.z 1

		@_setupDomEl 'Theatre', 'Js Typo', @_JsTypo, ['opacity', 'scaleAll']

		@_tool = @_makeEl '#theatre-animation-tool-typo'
		.inside @typoContainer
		.z 1

		@_setupDomEl 'Theatre', 'Tool Container', @_tool, ['opacity']

		webbased = @_makeEl '.webbased'
		.html 'web-based'
		.inside @_tool

		@_setupDomEl 'Theatre', 'Animation Tool Web-based', webbased, ['opacity', 'scaleAll']

		animation = @_makeEl '.animation'
		.html 'animation'
		.inside @_tool

		@_setupDomEl 'Theatre', 'Animation Tool Animation', animation, ['opacity', 'scaleAll']

		tool = @_makeEl '.tool'
		.html 'tool'
		.inside @_tool

		@_setupDomEl 'Theatre', 'Animation Tool Tool', tool, ['opacity', 'scaleAll']

		@_html = @_makeEl '#theatre-html-typo'
		.inside @typoContainer
		.z 2
		.transformStyle 'preserve-3d'

		@_setupDomEl 'Theatre', 'HTML container', @_html, ['opacity']

		html = @_makeEl '.html'
		.html 'HTML'
		.inside @_html
		.z 1

		@_setupDomEl 'Theatre', 'HTML El HTML', html, ['opacity', 'x', 'scaleAll']

		els = @_makeEl '.elements'
		.html 'Elements'
		.inside @_html

		@_setupDomEl 'Theatre', 'HTML El Elements', els, ['opacity', 'x', 'scaleAll']

		comma1 = @_makeEl '.comma 1'
		.html ','
		.inside @_html

		@_setupDomEl 'Theatre', 'HTML Comma 1', comma1, ['opacity']

		webgl = @_makeEl '.webgl'
		.html 'WebGL'
		.inside @_html

		@_setupDomEl 'Theatre', 'WebGL', webgl, ['opacity', 'scaleAll', 'x']

		buffers = @_makeEl '.buffers'
		.html 'Buffers'
		.inside @_html

		@_setupDomEl 'Theatre', 'Buffers', buffers, ['opacity', 'scaleAll', 'x']

		comma2 = @_makeEl '.comma 2'
		.html ','
		.inside @_html

		@_setupDomEl 'Theatre', 'HTML Comma 2', comma2, ['opacity']

		threejs = @_makeEl '.threejs'
		.html 'Three.js'
		.inside @_html

		@_setupDomEl 'Theatre', 'ThreeJS', threejs, ['opacity', 'scaleAll', 'x']

		objects = @_makeEl '.objects'
		.html 'Objects'
		.inside @_html

		@_setupDomEl 'Theatre', 'Objects', objects, ['opacity', 'scaleAll', 'x']

		@_anyKind = @_makeEl '#theatre-any-kind-typo'
		.inside @typoContainer
		.z 1

		@_setupDomEl 'Theatre', 'anyKind Container', @_anyKind, ['opacity']

		any = @_makeEl '.any'
		.html 'any'
		.inside @_anyKind
		.perspective 800

		@_setupDomEl 'Theatre', 'Animation anyKind any', any, ['opacity', 'z']

		kind = @_makeEl '.kind'
		.html 'kind'
		.inside @_anyKind
		.perspective 800

		@_setupDomEl 'Theatre', 'Animation anyKind Kind', kind, ['opacity', 'z']

		av = @_makeEl '.of'
		.html 'of'
		.inside @_anyKind
		.perspective 800

		@_setupDomEl 'Theatre', 'Animation anyKind of', av, ['opacity', 'z']

		js = @_makeEl '.js'
		.html 'javascript'
		.inside @_anyKind
		.perspective 800

		@_setupDomEl 'Theatre', 'Animation anyKind js', js, ['opacity', 'z']

		variable = @_makeEl '.var'
		.html 'variable'
		.inside @_anyKind
		.perspective 800

		@_setupDomEl 'Theatre', 'Animation anyKind Var', variable, ['opacity', 'z']

		# @_setupDomEl 'Theatre', 'Any Kind of Typo', @_anyKind, ['opacity', 'scaleAll', 'translation']

	_prepareBrowserMockup: ->

		@theatreContainer = @makeSetContainer([167000, 197000])
		.attr 'id', 'theatre-container'

		@_browserMockup = @_makeEl '#theatre-browserMockup'
		.html """

			<div id="theatre-browserMockup-head">

				<div class="theatre-browserMockup-head-winButton n1"></div>
				<div class="theatre-browserMockup-head-winButton n2"></div>
				<div class="theatre-browserMockup-head-winButton n3"></div>

			</div>

			"""
		.inside @theatreContainer

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
			'xy', 'scale'
		]

	_prepareMore: ->

		@moreContainer = @makeSetContainer([194000])
		.attr 'id', 'theatre-moreContainer'
		.zIndex -50
		.z 1

		@lineContainer = @_makeEl '.theatre-more-line'
		.inside @moreContainer
		# .html 'more about theatrejs in the coming weeks'

		@_setupDomEl 'Theatre', 'More Line Container', @lineContainer, ['opacity']

		set =

			opacity: [-0.2, 1]

			x: [40, 0]

			scale: [1.3, 1]

		@_createWords [
			'more', 'about', 'theatrejs', 'in', 'the', 'coming',
			'weeks'
			], 'More', 'Theatre', set

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

		el = @_makeEl ".theatre-#{pref}.theatre-#{pref}-#{ident}"
		.html word
		.inside @lineContainer
		.z 1

		name = ident[0].toUpperCase() + ident.substr(1, ident.length)

		# @_setupDomEl groupName, name, el, props

		@_setupTangled groupName, name, 'Prog', el, props

		return