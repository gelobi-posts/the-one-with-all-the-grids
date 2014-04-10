IntroSet = require '../sets/IntroSet'
ThePanelSet = require '../sets/ThePanelSet'

module.exports = (film) ->

	film.addSet new IntroSet film
	film.addSet new ThePanelSet film

	sh = film.createDullSlideshow 'Slideshows', 'Slideshow', '../images/dev/slides/', '.png'

	sh.add 'intro/hey-there'
	sh.add 'intro/blah'

	sh.add 'the-panel/introducing-guides'
	sh.add 'the-panel/install'
	sh.add 'the-panel/window-menu'

	sh.add 'the-panel/griddify/the-first-one'
	sh.add 'the-panel/griddify/hit-griddify'
	sh.add 'the-panel/griddify/different-direction'
	sh.add 'the-panel/griddify/add-a-space'
	sh.add 'the-panel/griddify/yep-gutters'
	sh.add 'the-panel/griddify/i-can-add-more-numbers'
	sh.add 'the-panel/griddify/with-a-selection'

	sh.add 'the-panel/divide/divide'
	sh.add 'the-panel/divide/4-equal-pieces'
	sh.add 'the-panel/divide/cut-in-half'

	sh.add 'the-panel/surround/surround'
	sh.add 'the-panel/surround/hit-surround'
	sh.add 'the-panel/surround/add-aonther-50'
	sh.add 'the-panel/surround/10-pixels-inside'

	sh.add 'theatrejs/that-was-guides'
	sh.add 'theatrejs/theatrejs'
	sh.add 'theatrejs/thats-wat-we-used'

	sh.add 'ending/thats-it'
	sh.add 'ending/bye-bye'


	# sh.on 'change', (name, number) ->

	# 	console.log number, name