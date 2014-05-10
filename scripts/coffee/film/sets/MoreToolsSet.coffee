Set = require('tiny-filmmaking-studio').Set

module.exports = class MoreToolsSet extends Set

	constructor: ->

		super

		@id = 'moreTools'

		@container = @makeSetContainer([125000, 150000])
		.set 'id', 'moreTools-container'

		@line1 = @_makeEl '.moreTools-line1'
		.html 'MORE TOOLS IN THE WORKS'
		.inside @container
		.y -50

		return