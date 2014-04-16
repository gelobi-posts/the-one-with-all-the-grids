module.exports = (set) ->

	grids1 = set._makeEl '.photoshop-grids .one'
	.inside set.container

	set._setupDomEl 'Grids', 'Grids 1', grids1, [
		'opacity'
	]

	grids2 = set._makeEl '.photoshop-grids .two'
	.inside set.container

	set._setupDomEl 'Grids', 'Grids 2', grids2, [
		'opacity'
	]

	grids3 = set._makeEl '.photoshop-grids .three'
	.inside set.container

	set._setupDomEl 'Grids', 'Grids 3', grids3, [
		'opacity'
	]

	grids4 = set._makeEl '.photoshop-grids .four'
	.inside set.container

	set._setupDomEl 'Grids', 'Grids 4', grids4, [
		'opacity', 'scale'
	]

	grid4bg = set._makeEl '.grid-bg'
	.inside grids4

	set._setupDomEl 'Grids', 'Grids 4 BG', grid4bg, [ 'opacity' ]

	grids5htmlH = """

		<ul>

			<li>
			<li>
			<li>

		</ul>
	"""

	grids5h = set._makeEl '.photoshop-grids .five .h'
	.inside set.container
	.html grids5htmlH

	set._setupDomEl 'Grids', 'Grids 5 Horizontal', grids5h, ['opacity']

	grids5htmlV = """

		<ul>

			<li>
			<li>
			<li>

		</ul>
	"""

	grids5v = set._makeEl '.photoshop-grids .five .v'
	.inside set.container
	.html grids5htmlV

	set._setupDomEl 'Grids', 'Grids 5 Vertical', grids5v, ['opacity']

	grid6bg = set._makeEl '.divide-selection-grid'
	.inside grids4
	.html grids5htmlV+grids5htmlH

	set._setupDomEl 'Grids', 'Grids Divide Selection', grid6bg, [ 'opacity' ]

	grid7 = set._makeEl '.photoshop-grids .divide-half'
	.inside set.container
	.html """

		<div></div>
		<div></div>

	"""

	set._setupDomEl 'Grids', 'Grids Divide Half', grid7, ['opacity']

	grid8 = set._makeEl '.photoshop-grids .divide-ruleofthird'
	.inside set.container
	.html """

		<ul>

			<li></li>
			<li></li>

		</ul>
		<ul>

			<li></li>
			<li></li>

		</ul>

	"""

	set._setupDomEl 'Grids', 'Grids Divide Rule of Third', grid8, ['opacity']

	grid9 = set._makeEl '.photoshop-grids .wrap-1'
	.inside grids4
	.html """

		<div></div>
		<div></div>

	"""

	set._setupDomEl 'Grids', 'Grids Wrap 0', grid9, ['opacity']