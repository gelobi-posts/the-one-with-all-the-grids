Set = require('tiny-filmmaking-studio').Set

module.exports = class ThePanelSet extends Set

	constructor: ->

		super

		container = @_makeEl '.container'
		.inside @film.display.stageEl

		@id = 'the-panel'

		panelHtml = """
		<div style="width: 246px">

		<section>

			<form>

			<div>

				<input type="text" name="spacing" placeholder="Spacing" class="big">

				<div data-type="rotator" data-options="right, down, left, up" data-name="direction" class="direction"></div>

				<button style="width: 54px" class="noMargin">Griddify</button>

			</div>

			</form>

			<hr>

		</section>

		<section>

			<form>

			<div>

				<input type="text" name="divisions" placeholder="Divisions" class="big">

				<div data-type="rotator" data-options="vertical, horizontal, both" data-name="orientation" class="orientation"></div>

				<button style="width: 54px" class="noMargin">Divide</button>

			</div>

			</form>

			<hr>


		</section>

		<section>

			<form>

			<div>

				<input type="text" name="spacing" placeholder="Spacing" class="big">

				<div data-type="rotator" data-options="vertical, horizontal, both" data-name="orientation" class="orientation"></div>

				<button style="width: 54px" class="noMargin">Wrap</button>

			</div>

			</form>

		</section>

		<script src="./scripts/dist/panel.js"></script>

		</div>
		"""

		@thePanel = @_makeEl '#the-panel'
		.inside container

		@panelBody = @_makeEl '.body'
		.html panelHtml
		.inside @thePanel