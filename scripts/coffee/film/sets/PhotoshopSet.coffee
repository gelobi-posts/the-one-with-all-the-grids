Set = require('tiny-filmmaking-studio').Set

module.exports = class IntroSet extends Set

	constructor: ->

		super

		@id = 'photoshop'

		container = @_makeEl '#photoshop-container'
		.inside @film.display.stageEl
		.perspective 1000

		bg = @_makeEl '#photoshop-bg'
		.inside container

		@_setupDomEl 'Photoshop', 'BG', bg, [
			'translation', 'scale', 'opacity', 'rotation'
		]

		tools = @_makeEl '#photoshop-tools'
		.inside container

		@_setupDomEl 'Photoshop', 'Tools', tools, [
			'translation', 'scale', 'opacity', 'rotation'
		]

		layers = @_makeEl '#photoshop-layers'
		.inside container

		@_setupDomEl 'Photoshop', 'Layers', layers, [
			'translation', 'scale', 'opacity'
		]


