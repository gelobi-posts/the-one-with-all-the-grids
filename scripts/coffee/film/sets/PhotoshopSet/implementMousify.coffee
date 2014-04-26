Mousify = require './tools/Mousify'

module.exports = (film) ->

	el = film._makeEl '#photoshop-cursor'
	.inside film.sets.photoshop.container

	m = new Mousify film, 'Mousify', 'Mouse'


