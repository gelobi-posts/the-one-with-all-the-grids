Set = require('tiny-filmmaking-studio').Set

module.exports = class EndingSet extends Set

	constructor: ->

		super

		@id = 'ending'

		@container = @makeSetContainer([200000])
		.set 'id', 'ending-container'

		do @_prepareLinks

	_prepareLinks: ->

	_prepareCredits: ->