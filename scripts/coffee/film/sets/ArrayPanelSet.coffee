Set = require('tiny-filmmaking-studio').Set

module.exports = class ArrayPanelPanelSet extends Set

	constructor: ->

		super

		@id = 'arrayPanel'

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

		@arrayPanel = @_makeEl '#arrayPanel.aPanel'
		.inside container

		@panelBody = @_makeEl '.body'
		.html panelHtml

		@_setupDomEl 'Array Panel', 'Panel', @arrayPanel, ['opacity']

		@panelBody.inside @arrayPanel