Set = require('tiny-filmmaking-studio').Set

module.exports = class EndingSet extends Set

	constructor: ->

		super

		@id = 'ending'

		@container = @makeSetContainer([200000])
		.set 'id', 'ending-container'

		@_fbLink = @_makeEl '#ending-fb-link'
		.html """

			<a target="_blank" href="https://facebook.com">Facebook</a>

		"""
		.inside @container

		@_setupDomEl 'Ending', 'Facebook', @_fbLink, ['opacity']

		@_twitLink = @_makeEl '#ending-twitter-link'
		.html """

			<a target="_blank" href="https://twitter.com">Twitter</a>

		"""
		.inside @container

		@_setupDomEl 'Ending', 'Twitter', @_twitLink, ['opacity']

		@_newsletter = @_makeEl '#ending-newsletter'
		.html """

			<div class="newsletter" id="mc_embed_signup">

				<form action="http://gelobi.us8.list-manage2.com/subscribe/post?u=1ef4119422f6473b12661ea04&amp;id=76dff4bab2" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>

				    <input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="Your email address" required>
				    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->


				    <div style="position: absolute; left: -5000px;">

				    	<input type="text" name="b_1ef4119422f6473b12661ea04_76dff4bab2" value="">

				    </div>

			    	<button type="submit" name="subscribe" id="mc-embedded-subscribe">

			    		Subscribe

			    	</button>

				</form>

			</div>

		"""
		.inside @container

		@_setupDomEl 'Ending', 'Newsletter', @_newsletter, ['opacity']

		return