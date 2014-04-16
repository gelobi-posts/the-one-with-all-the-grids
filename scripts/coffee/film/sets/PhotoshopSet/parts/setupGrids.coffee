module.exports = (set) ->

	grids1 = set._makeEl '#photoshop-grids .one'
	.inside set.container

	set._setupDomEl 'Grids', 'Grids 1', grids1, [
		'opacity'
	]

	grids2 = set._makeEl '#photoshop-grids .two'
	.inside set.container

	set._setupDomEl 'Grids', 'Grids 2', grids2, [
		'opacity'
	]

	grids3 = set._makeEl '#photoshop-grids .three'
	.inside set.container

	set._setupDomEl 'Grids', 'Grids 3', grids3, [
		'opacity'
	]

	grids4 = set._makeEl '#photoshop-grids .four'
	.inside set.container

	set._setupDomEl 'Grids', 'Grids 4', grids4, [
		'opacity', 'scale'
	]

	grid4bg = set._makeEl '.grid-bg'
	.inside grids4

	set._setupDomEl 'Grids', 'Grids 4 BG', grid4bg, [ 'opacity' ]

	grids5html = """

		<ul>

			<li>
			<li>
			<li>

		</ul>
	"""

	grids5h = set._makeEl '#photoshop-grids .five'
	.inside set.container
	.html grids5html

	set._setupDomEl 'Grids', 'Grids 5 Horizontal', grids5h, ['opacity']