module.exports = (set) ->

	container = set._makeEl '#grids'
	.inside set.container

	selection = set._makeEl '#selection'
	.inside container

	set._setupDomEl 'Grids', 'Selection', selection, [
		'opacity', 'scale'
	]

	griddifyContainer = set._makeEl '#griddify-container'
	.inside container

	griddifyHundredVer = set._makeEl '#hundred-v'
	.inside griddifyContainer

	set._setupDomEl 'Grids', 'Griddify 100 v', griddifyHundredVer, [
		'opacity'
	]

	griddifyHundredHor = set._makeEl '#hundred-h'
	.inside griddifyContainer

	set._setupDomEl 'Grids', 'Griddify 100 h', griddifyHundredHor, [
		'opacity'
	]

	griddifyTwenty = set._makeEl '#twenty'
	.inside griddifyContainer

	set._setupDomEl 'Grids', 'Griddify 20', griddifyTwenty, [
		'opacity'
	]

	griddifyForty = set._makeEl '#griddify-forty'
	.inside selection

	set._setupDomEl 'Grids', 'Griddify 40 -s', griddifyForty, [ 'opacity' ]

	divideContainer = set._makeEl '#divide-container'
	.inside container

	divideThreeHor = set._makeEl '#three-h'
	.inside divideContainer
	.html """<div></div><div></div><div></div>"""

	set._setupDomEl 'Grids', 'Divide 4 h', divideThreeHor, ['opacity']

	divideThreeVer = set._makeEl '#three-v'
	.inside divideContainer
	.html """<div></div><div></div><div></div>"""

	set._setupDomEl 'Grids', 'Divide 4 v', divideThreeVer, ['opacity']


	# grids5v = set._makeEl '.five .v'
	# .inside container
	# .html grids5html

	# set._setupDomEl 'Grids', 'Grids 5 Vertical', grids5v, ['opacity']

	# grid6bg = set._makeEl '.divide-selection-grid'
	# .inside grids4
	# .html grids5html + grids5html

	# set._setupDomEl 'Grids', 'Grids Divide Selection', grid6bg, [ 'opacity' ]

	# grid7 = set._makeEl '.divide-half'
	# .inside container
	# .html """

	# 	<div class="v"></div>
	# 	<div class="h"></div>

	# """

	# set._setupDomEl 'Grids', 'Grids Divide Half', grid7, ['opacity']

	# grid8 = set._makeEl '.divide-ruleofthird'
	# .inside container
	# .html """

	# 	<div class="v">

	# 		<div></div>
	# 		<div></div>

	# 	</div>

	# 	<div class="h">

	# 		<div></div>
	# 		<div></div>

	# 	</div>


	# """

	# set._setupDomEl 'Grids', 'Grids Divide Rule of Third', grid8, ['opacity']

	# grid9 = set._makeEl '.wrap-1'
	# .inside grids4

	# set._setupDomEl 'Grids', 'Grids Wrap 0', grid9, ['opacity']

	# grid10v = set._makeEl '.wrap-2 .v'
	# .inside grids4
	# .html """

	# 	<div class="l"></div>
	# 	<div class="r"></div>

	# """

	# set._setupDomEl 'Grids', 'Grids Wrap 10 Ver', grid10v, ['opacity']

	# grid10h = set._makeEl '.wrap-2 .h'
	# .inside grids4
	# .html """

	# 	<div class="t"></div>
	# 	<div class="b"></div>

	# """

	# set._setupDomEl 'Grids', 'Grids Wrap 10 Hor', grid10h, ['opacity']

	# grid11v = set._makeEl '.wrap-3 .v'
	# .inside grids4
	# .html """

	# 	<div class="l"></div>
	# 	<div class="r"></div>

	# """

	# set._setupDomEl 'Grids', 'Grids Wrap 50 Ver', grid11v, ['opacity']

	# grid11h = set._makeEl '.wrap-3 .h'
	# .inside grids4
	# .html """

	# 	<div class="t"></div>
	# 	<div class="b"></div>

	# """

	# set._setupDomEl 'Grids', 'Grids Wrap 50 Hor', grid11h, ['opacity']

