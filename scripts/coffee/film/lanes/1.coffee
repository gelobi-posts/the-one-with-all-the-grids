ThePanelSet = require '../sets/ThePanelSet'
PhotoshopSet = require '../sets/PhotoshopSet'

module.exports = (film) ->

	film.addSet new PhotoshopSet film

	film.addSet new ThePanelSet film

	q = film.createQwerty 'Qwerty', 'Qwerty'

	q.addInputs [document.getElementById('griddify-input'),
					 document.getElementById('divide-input'),
					 document.getElementById('wrap-input')]

	q.addValues ['10', '10', '10 20', '10']

