Set = require('tiny-filmmaking-studio').Set

module.exports = class EndingSet extends Set

	constructor: ->

		super

		@id = 'project'

		@container = @makeSetContainer([115000, 126000])
		.set 'id', 'project-container'

		@_github = @_makeEl '#project-github'
		.html """

			<span class="icon icon-github-circled-4"></span>

			<a target="_blank" href="https://github.com/AriaMinaei/griddify">

				github.com/AriaMinaei/griddify

			</a>

		"""
		.inside @container

		@_setupDomEl 'Project', 'Github', @_github, ['opacity']

		@_mail = @_makeEl '#project-mail'
		.html """

			<span class="icon icon-mail-1"></span>

			<a target="_top" href="mailto:higelobi@gmail.com">

				higelobi@gmail.com

			</a>

		"""
		.inside @container

		@_setupDomEl 'Project', 'Mail', @_mail, ['opacity']