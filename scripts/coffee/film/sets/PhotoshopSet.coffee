Set = require('tiny-filmmaking-studio').Set
setupGrids = require './PhotoshopSet/parts/setupGrids'
setupPhotoshopInterface = require './PhotoshopSet/parts/setupPhotoshopInterface'

module.exports = class PhotoshopSet extends Set

	constructor: ->

		super

		@id = 'photoshop'

		do @_setupBg

		do @_setupTheTwoPanels

		do @_setupCursor

		do @_setupGridsAndSelection

		do @_setupMenus

		@blackifier = @_makeEl '#photoshop-blackifier'
		.inside @film.display.stageContainer

		@_setupDomEl 'Photoshop', 'Blackifier', @blackifier, ['opacity']

		@film.loader
		.loadImage window.postBase + '/images/photoshop/bg.jpg', 369857
		.loadImage window.postBase + '/images/photoshop/pspanels-extensions-selected.png', 930
		.loadImage window.postBase + '/images/photoshop/pspanels-guides-selected.png', 930
		.loadImage window.postBase + '/images/photoshop/pspanels-layers.png', 13000
		.loadImage window.postBase + '/images/photoshop/pspanels-menu.png', 4915
		.loadImage window.postBase + '/images/photoshop/pspanels-tools.png', 8732
		.loadImage window.postBase + '/images/photoshop/pspanels-window-menu.png', 10000
		.loadImage window.postBase + '/images/photoshop/pspanels-window-selected.png', 1679
		.loadImage window.postBase + '/images/photoshop/pspanels-extensions-menu.png', 1834
		.loadImage window.postBase + '/images/photoshop/grids/1.png', 1000
		.loadImage window.postBase + '/images/photoshop/grids/2.png', 1000
		.loadImage window.postBase + '/images/photoshop/grids/3.png', 1000
		.loadImage window.postBase + '/images/photoshop/grids/4.png', 1000

	_setupBg: ->

		bg = @_makeEl '#photoshop-bg'
		.inside @film.display.stageContainer

		@_setupDomEl 'Photoshop', 'BG', bg, [
			'translation', 'scaleAll', 'opacity', 'rotation'
		]

	_setupTheTwoPanels: ->

		twoPanelsContainer = @makeSetContainer()
		.attr 'id', 'photoshop-twoPanelsContainer'

		tools = @_makeEl '#photoshop-tools'
		.inside twoPanelsContainer
		.perspective 1000

		@_setupDomEl 'Photoshop', 'Tools', tools, [
			'translation', 'scaleAll', 'opacity', 'rotation'
		]

		layers = @_makeEl '#photoshop-layers'
		.inside twoPanelsContainer
		.perspective 1000

		@_setupDomEl 'Photoshop', 'Layers', layers, [
			'translation', 'scaleAll', 'opacity', 'rotation'
		]

	_setupCursor: ->

		@pointer = @_makeEl '#photoshop-pointer .icon-up-open-big'
		.inside @film.display.stageContainer

		@_appendElementOnTime @pointer, @film.display.stageContainer, [0, 118000]

		@_setupDomEl 'Mouse', 'domEl', @pointer, [
			'opacity', 'translation'
		]

	_setupGridsAndSelection: ->

		@gridsAndSelectionContainer = @makeSetContainer([27000, 118001])
		.attr 'id', 'photoshop-gridsAndSelectionContainer'

		setupGrids @

	_setupMenus: ->

		@menusContainer = @makeSetContainer()
		.attr 'id', 'photoshop-menusContainer'

		setupPhotoshopInterface @