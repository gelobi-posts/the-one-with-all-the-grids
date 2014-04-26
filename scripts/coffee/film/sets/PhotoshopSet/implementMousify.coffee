Mousify = require './tools/Mousify'

module.exports = (film) ->

	w = window.innerWidth
	h = window.innerHeight

	m = new Mousify film.sets.photoshop.cursor, film, 'Mouse', 'Mousify', [

		() -> return {x: 100, y: 100},

		() -> return {x: 0, y: 100},

		() -> return {x: w / 2, y: h / 2}

		# () -> return {x: w / 2 - 100, y: h / 2 - 100},

	]



