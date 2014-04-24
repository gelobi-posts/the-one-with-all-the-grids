Set = require('tiny-filmmaking-studio').Set

module.exports = class TheatreSet extends Set

	constructor: ->

		super

		@id = "theatre"

		@container = @makeSetContainer([111100])

		do @_prepareBrowserMockup

	_prepareBrowserMockup: ->

		@browserMockup = @_makeEl '#theatre-browserMockup'
		.inside @container