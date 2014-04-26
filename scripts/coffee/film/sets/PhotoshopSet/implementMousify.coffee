Mousify = require './tools/Mousify'

module.exports = (film) ->

	m = new Mousify film.sets.photoshop.cursor, film, 'Mouse', 'Mousify', [

		() -> return {x: 100, y: 100},

		() -> return {x: 0, y: 100}

	]



