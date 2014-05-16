Set = require('tiny-filmmaking-studio').Set

module.exports = class EndingSet extends Set

	constructor: ->

		super

		@id = 'ending'

		@container = @makeSetContainer([200000])
		.set 'id', 'ending-container'
		.zIndex -50

		do @_prepareLinks

		do @_prepareCredits

	_prepareLinks: ->

		@_fbLink = @_makeEl '#ending-fb-link'
		.html """

			<span class="ending-fb-link-icon icon-facebook-rect-2"></span>

			<a target="_blank" class="ending-fb-link-a" href="https://facebook.com/gelobi.org">

				fb.com/gelobi.org

			</a>

		"""
		.inside @container

		@_setupDomEl 'Ending', 'Facebook', @_fbLink, ['opacity']

		@_twitLink = @_makeEl '#ending-twitter-link'
		.html """

			<span class="ending-twitter-link-icon icon-twitter-rect"></span>

			<a target="_blank" class="ending-twitter-link-a" href="https://twitter.com/gelobi_org">

				<span>@gelobi</span><span class="ending-twitter-link-a-underline">_</span><span>org<span>

			</a>

		"""
		.inside @container

		@_setupDomEl 'Ending', 'Twitter', @_twitLink, ['opacity']

		@_newsletter = @_makeEl '#ending-newsletter'
		.html """

			<div class="ending-newsletter-icon icon-email"></div>

			<div class="ending-newsletter-form" id="mc_embed_signup">

				<form action="http://gelobi.us8.list-manage2.com/subscribe/post?u=1ef4119422f6473b12661ea04&amp;id=76dff4bab2" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>

				    <input type="email" value="" name="EMAIL" class="email ending-mail" id="mce-EMAIL" placeholder="Your email address" required>
				    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->


				    <div style="position: absolute; left: -5000px;">

				    	<input type="text" name="b_1ef4119422f6473b12661ea04_76dff4bab2" value="">

				    </div>

			    	<button type="submit" name="subscribe" class="ending-subscribe" id="mc-embedded-subscribe">

			    		Subscribe

			    	</button>

				</form>

			</div>

		"""
		.inside @container

		@_setupDomEl 'Ending', 'Newsletter', @_newsletter, ['opacity']

		return

	_prepareCredits: ->

		created = @_makeEl '.credits.created'
		.html 'Created by :'
		.inside @container

		@_setupDomEl 'Ending', 'Created By', created, ['opacity']

		aria = @_makeEl '.credits'
		.html 'Aria Minaei'
		.inside @container

		@_setupDomEl 'Ending', 'Aria', aria, ['opacity']

		pouria = @_makeEl '.credits'
		.html 'Pouria Maleki'
		.inside @container

		@_setupDomEl 'Ending', 'Pouria', pouria, ['opacity']

		pouya = @_makeEl '.credits'
		.html 'Pouya Adib'
		.inside @container

		@_setupDomEl 'Ending', 'Pouya', pouya, ['opacity']

		gelobi = @_makeEl '.credits'
		.html 'Published in gelobi'
		.inside @container

		@_setupDomEl 'Ending', 'gelobi', gelobi, ['opacity']

		powered = @_makeEl '.credits'
		.html 'Powered by theatrejs'
		.inside @container

		@_setupDomEl 'Ending', 'powered', powered, ['opacity']

		pixana = @_makeEl '.credits'
		.html 'a Pixana Product'
		.inside @container

		@_setupDomEl 'Ending', 'Pixana', pixana, ['opacity']

		cc = @_makeEl '.credits'
		.html 'Creative Commons By-Sa 3.0'
		.inside @container

		@_setupDomEl 'Ending', 'CC', cc, ['opacity']
