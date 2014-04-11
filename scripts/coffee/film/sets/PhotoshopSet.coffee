Set = require('tiny-filmmaking-studio').Set

module.exports = class IntroSet extends Set

	constructor: ->

		super

		@id = 'photoshop'

		container = @_makeEl '#photoshop-container'
		.inside @film.display.stageEl

		bg = @_makeEl '#photoshop-bg'
		.inside container

		@_setupDomEl 'Photoshop', 'BG', bg, [
			'translation', 'scale', 'opacity', 'rotation'
		]

		menubar = @_makeEl '#photoshop-menu-bar'
		.inside container

		windowmenu = @_makeEl '#photoshop-window'
		.inside container

		@_setupDomEl 'Photoshop', 'Window', windowmenu, ['opacity']

		extensionsHighlight = @_makeEl '#photoshop-extensions-selected'
		.inside container

		@_setupDomEl 'Photoshop', 'Extension-Heighlight', extensionsHighlight, ['translation']

		extensions = @_makeEl '#photoshop-extensions'
		.inside container

		@_setupDomEl 'Photoshop', 'Extensions', extensions, ['opacity']

		guides = @_makeEl '#photoshop-guides'
		.inside container

		@_setupDomEl 'Photoshop', 'Guides', guides, ['opacity']

		tools = @_makeEl '#photoshop-tools'
		.inside container
		.perspective 1000

		@_setupDomEl 'Photoshop', 'Tools', tools, [
			'translation', 'scale', 'opacity', 'rotation'
		]

		layers = @_makeEl '#photoshop-layers'
		.inside container
		.perspective 1000

		@_setupDomEl 'Photoshop', 'Layers', layers, [
			'translation', 'scale', 'opacity', 'rotation'
		]


