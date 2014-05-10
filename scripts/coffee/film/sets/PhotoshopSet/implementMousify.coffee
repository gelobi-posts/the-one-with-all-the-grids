Mousify = require './tools/Mousify'

module.exports = (film) ->

	m = new Mousify film.sets.photoshop.cursor, film, 'Mouse', 'Mousify', [

		() -> return {x: window.innerWidth * .5, y: window.innerHeight * .5},

		() -> return {x: - window.innerWidth * .5 + 430, y: - window.innerHeight * .5 + 20 },

		() -> return {x: 0, y: 70},

		() -> return {x: 160, y: 0},

		() -> return {x: 0, y: 40},

		(prev) -> return {x: window.innerWidth * .4 + 100 - prev.x, y: window.innerHeight * .2 + 40 - prev.y},

		() -> return {x: 0, y: 44},

		() -> return {x: 0, y: 44},

		() -> return {x: -50, y: -75},

		() -> return {x: 150, y: 0}

		# () -> return {x: }

	]
