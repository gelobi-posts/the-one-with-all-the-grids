ThePanelSet = require '../sets/ThePanelSet'
PhotoshopSet = require '../sets/PhotoshopSet'
Qwerty = require '../sets/PhotoshopSet/Qwerty'

module.exports = (film) ->

	film.addSet new PhotoshopSet film

	film.addSet new ThePanelSet film

	q = new Qwerty film, 'Qwerty', 'Qwerty'

	q.addInputs [document.getElementById('griddify-input'),
					 document.getElementById('divide-input'),
					 document.getElementById('wrap-input')]

	q.addValues ['10', '20', '30 40', '50']

