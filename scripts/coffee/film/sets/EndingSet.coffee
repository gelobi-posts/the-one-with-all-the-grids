Set = require('tiny-filmmaking-studio').Set

module.exports = class EndingSet extends Set

	constructor: ->

		super

		@id = 'ending'

		@container = @makeSetContainer([200000])
		.set 'id', 'ending-container'

		@_linksContainer = @_makeEl '#ending-links-container'
		.inside @container

		@_fbLink = @_makeEl '#ending-fb-link'
		.html 'Facebook'
		.inside @_linksContainer

		@_setupDomEl 'Ending', 'Facebook', @_fbLink, ['opacity']

		@_twitLink = @_makeEl '#ending-twitter-link'
		.html 'Twitter'
		.inside @_linksContainer

		@_setupDomEl 'Ending', 'Twitter', @_twitLink, ['opacity']

		@_newsletter = @_makeEl '#ending-newsletter'
		.html 'Newsletter'
		.inside @_linksContainer

		@_setupDomEl 'Ending', 'Newsletter', @_newsletter, ['opacity']

		return