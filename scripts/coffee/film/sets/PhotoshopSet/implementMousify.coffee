Mousify = require './tools/Mousify'

module.exports = (film) ->

	el = film.sets.photoshop.container.node.querySelector '#photoshop-cursor'

	m = new Mousify el, film, 'Mousify', 'Mouse'


