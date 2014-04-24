Set = require('tiny-filmmaking-studio').Set
setupGrids = require './PhotoshopSet/parts/setupGrids'
setupPhotoshopInterface = require './PhotoshopSet/parts/setupPhotoshopInterface'

module.exports = class PhotoshopSet extends Set

	constructor: ->

		super

		@id = 'photoshop'

		@container = @makeSetContainer [10000, 30000]
		.set 'id', 'photoshop-container'

		setupPhotoshopInterface @

		setupGrids @

		@film.loader
		.loadImage '../images/photoshop/bg.jpg', 369857
		.loadImage '../images/photoshop/grids.png', 930
		.loadImage '../images/photoshop/pspanels-extensions-selected.png', 930
		.loadImage '../images/photoshop/pspanels-guides-selected.png', 930
		.loadImage '../images/photoshop/pspanels-layers.png', 13000
		.loadImage '../images/photoshop/pspanels-menu.png', 4915
		.loadImage '../images/photoshop/pspanels-tools.png', 8732
		.loadImage '../images/photoshop/pspanels-window-menu.png', 10000
		.loadImage '../images/photoshop/pspanels-window-selected.png', 1679
		.loadImage '../images/photoshop/pspanels-extensions-menu.png', 1834
		.loadImage '../images/photoshop/grids/1.png', 1000
		.loadImage '../images/photoshop/grids/2.png', 1000
		.loadImage '../images/photoshop/grids/3.png', 1000
		.loadImage '../images/photoshop/grids/4.png', 1000
