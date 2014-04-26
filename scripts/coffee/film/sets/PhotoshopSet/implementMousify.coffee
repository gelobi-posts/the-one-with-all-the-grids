Mousify = require './tools/Mousify'

module.exports = (film) ->

	m = new Mousify film.sets.photoshop.cursor, film, 'Mouse', 'Mousify'

	m.addMargin	100, 0
	m.addMargin	0, 100
	m.addMargin	200, -100


