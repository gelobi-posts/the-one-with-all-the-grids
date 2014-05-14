Set = require('tiny-filmmaking-studio').Set

module.exports = class EndingSet extends Set

	constructor: ->

		super

		@id = 'project'

		@container = @makeSetContainer([200000])
		.set 'id', 'project-container'

		@_github= @_makeEl '#project-github'
		.html """

			<span class="icon icon-github"></span>

			<a target="_blank" href="https://facebook.com/gelobi.org">

				gelobi.org

			</a>

		"""
		.inside @container

		@_setupDomEl 'Ending', 'Facebook', @_fbLink, ['opacity']