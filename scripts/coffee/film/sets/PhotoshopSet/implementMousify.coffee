Mousify = require './tools/Mousify'

module.exports = (film) ->

	m = new Mousify film.sets.photoshop.cursor, film, 'Mouse', 'Mousify', [

		() -> return {x: window.innerWidth * .5, y: window.innerHeight * .5},

		() -> return {x: window.innerWidth * .4, y: window.innerHeight * .2},

		() -> return {x: 213, y: 46}

	]
