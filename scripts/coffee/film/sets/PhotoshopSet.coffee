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


