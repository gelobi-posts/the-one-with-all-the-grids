ThePanelSet = require '../sets/ThePanelSet'
PhotoshopSet = require '../sets/PhotoshopSet'
Qwerty = require '../sets/PhotoshopSet/Qwerty'

module.exports = (film) ->

	film.addSet new PhotoshopSet film

	film.addSet new ThePanelSet film

	gridQ = new Qwerty film, 'Qwerty', 'Griddify'

	gridQ.addInput document.getElementById('griddify-input')

	gridQ.addValues ['10', '20', '30 40', '50']

	divideQ = new Qwerty film, 'Qwerty', 'Divide'

	divideQ.addInput document.getElementById('divide-input')

	divideQ.addValues ['10', '20', '30 40', '50']

	wrapQ = new Qwerty film, 'Qwerty', 'Wrap'

	wrapQ.addInput document.getElementById('wrap-input')
