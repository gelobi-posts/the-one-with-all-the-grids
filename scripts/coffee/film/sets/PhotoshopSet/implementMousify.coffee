Mousify = require './tools/Mousify'

module.exports = (film) ->

	el = film.sets.photoshop.cursor

	m = new Mousify el, film, 'Mouse', 'Mousify'


