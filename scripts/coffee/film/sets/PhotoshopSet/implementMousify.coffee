Mousify = require './tools/Mousify'

module.exports = (film) ->

	m = new Mousify film.sets.photoshop.cursor, film, 'Mouse', 'Mousify', [

		() -> return {x: 100, y: 100},

		() -> return {x: 0, y: 100},

		() -> return {x: window.innerWidth / 2, y: window.innerHeight / 2}

		# () -> return {x: w / 2 - 100, y: h / 2 - 100},

	]



