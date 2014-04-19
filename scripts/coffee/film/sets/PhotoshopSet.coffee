Set = require('tiny-filmmaking-studio').Set
setupGrids = require './PhotoshopSet/parts/setupGrids'
setupPhotoshopInterface = require './PhotoshopSet/parts/setupPhotoshopInterface'

module.exports = class PhotoshopSet extends Set

	constructor: ->

		super

		@id = 'photoshop'

		@container = @film.display.makeSetContainer()
		.set 'id', 'photoshop-container'

		setupPhotoshopInterface @

		setupGrids @



