Set = require('tiny-filmmaking-studio').Set
Rotator = require './thePanelSet/Rotator'

module.exports = class ThePanelSet extends Set

	constructor: ->

		super

		@id = 'thePanel'

		@film.loader
		.loadImage '../images/thePanel/bg.png', 2276
		.loadImage '../images/thePanel/direction.png', 1030

		container = @film.sets.photoshop.container

		panelHtml = """
		<div style="width: 246px">

		<section class="griddify-section">

			<div>

				<input id="griddify-input" type="text" name="spacing" placeholder="Spacing" class="big">

				<div id="griddify-direction" data-type="rotator" data-options="right, down, left, up" data-name="direction" class="direction"></div>

				<button id="griddify-button" style="width: 54px" class="noMargin">Griddify</button>

			</div>

			<hr>

		</section>

		<section class="divide-section">

			<div>

				<input id="divide-input" type="text" name="divisions" placeholder="Divisions" class="big">

				<div id="divide-orientation" data-type="rotator" data-options="vertical, horizontal, both" data-name="orientation" class="orientation"></div>

				<button id="divide-button" style="width: 54px" class="noMargin">Divide</button>

			</div>

			<hr>


		</section>

		<section class="wrap-section">

			<div>

				<input id="wrap-input" type="text" name="spacing" placeholder="Spacing" class="big">

				<div id="wrap-orientation" data-type="rotator" data-options="vertical, horizontal, both" data-name="orientation" class="orientation"></div>

				<button id="wrap-button" style="width: 54px" class="noMargin">Wrap</button>

			</div>

		</section>

		<script src="./scripts/dist/panel.js"></script>

		</div>
		"""

		@thePanel = @_makeEl '#thePanel.aPanel'
		.inside container
		.z 1

		@panelBody = @_makeEl '.body'
		.html panelHtml

		@_setupDomEl 'The Panel', 'Panel', @thePanel, ['opacity']

		@griddifySection = @_makeEl @panelBody.node.querySelector '.griddify-section'
		.perspective 400

		@divideSection = @_makeEl @panelBody.node.querySelector '.divide-section'
		.perspective 400

		@wrapSection = @_makeEl @panelBody.node.querySelector '.wrap-section'
		.perspective 800


		@_setupDomEl 'The Panel', 'Griddify Section', @griddifySection, ['opacity', 'rotationY']
		@_setupDomEl 'The Panel', 'Divide Section', @divideSection, ['opacity', 'rotationY']
		@_setupDomEl 'The Panel', 'Wrap Section', @wrapSection, ['opacity', 'rotationY']

		Rotator.applyTo @panelBody.node

		@panelBody.inside @thePanel