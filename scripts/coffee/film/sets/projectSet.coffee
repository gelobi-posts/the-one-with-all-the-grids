Set = require('tiny-filmmaking-studio').Set

module.exports = class ProjectSet extends Set

	constructor: ->

		super

		@id = 'project'

		@container = @makeSetContainer([112000, 129000])
		.set 'id', 'project-container'
		.zIndex 0

		@_github = @_makeEl '#project-github'
		.html """

			<span class="project-github-icon icon-github-squared"></span>

			<a target="_blank" class="project-github-a" href="https://github.com/pixana/griddify">

				github.com/pixana/griddify

			</a>

		"""
		.inside @container

		@_setupDomEl 'Project', 'Github', @_github, ['opacity']

		@_mail = @_makeEl '#project-mail'
		.html """

			<span class="project-mail-icon project-mail-icon icon-email"></span>

			<a target="_top" class="project-mail-a" href="mailto:higelobi@gmail.com">

				higelobi@gmail.com

			</a>

		"""
		.inside @container

		@_setupDomEl 'Project', 'Mail', @_mail, ['opacity']