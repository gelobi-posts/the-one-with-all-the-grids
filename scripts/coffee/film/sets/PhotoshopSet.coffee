Set = require('tiny-filmmaking-studio').Set
setupGrids = require './PhotoshopSet/parts/setupGrids'
setupPhotoshopInterface = require './PhotoshopSet/parts/setupPhotoshopInterface'

module.exports = class PhotoshopSet extends Set

	constructor: ->

		super

		@id = 'photoshop'

		@container = @makeSetContainer()
		.set 'id', 'photoshop-container'
		.zIndex -100
		.addClass 'photoshopContainer'

		console.log @container.node

		@blackifier = @_makeEl '.photoshop-blackifier'
		.inside @film.display.stageContainer
		.zIndex -90

		@_setupDomEl 'Photoshop', 'Blackifier', @blackifier, ['opacity']

		@dynamicContainer = @makeSetContainer [12000, 113000]
		.set 'id', 'photoshop-dynamicContainer'
		.zIndex -98

		setupPhotoshopInterface @

		setupGrids @

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
