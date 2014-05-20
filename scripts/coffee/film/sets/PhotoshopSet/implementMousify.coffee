Mousify = require './tools/Mousify'

module.exports = (film) ->

	m = new Mousify film.sets.photoshop.pointer, film, 'Mouse', 'Mousify', [

		() -> {x: window.innerWidth * .5, y: window.innerHeight * .5},

		(prev) -> {x: -prev.x + 440, y: -prev.y + 19 },

		() -> {x: 0, y: 70},

		() -> {x: 160, y: 0},

		() -> {x: 0, y: 40},

		(prev) -> {x:  -prev.x + window.innerWidth * .4 + 110, y: -prev.y +  window.innerHeight * .2 + 40},

		() -> {x: 0, y: 44},

		() -> {x: 0, y: 44},

		() -> {x: -50, y: -81},

		() -> {x: 150, y: 0},

		() -> {x: -150, y: 0 },

		() -> {x: 150, y: 0},

		() -> {x: -150, y: 0},

		() -> {x: 150, y: 0},

		() -> {x: -50, y:0},

		() -> {x: 50, y:0},

		# first selection
		(prev) -> {x: -prev.x + .07 * window.innerWidth - 0, y: -prev.y + .2 * window.innerHeight + 0},

		() -> {x: 360, y: 360},

		(prev) -> {x: -prev.x + .4 * window.innerWidth + 200, y: -prev.y + .2 * window.innerHeight + 50},

		(prev) -> {x: -prev.x + 88, y: -prev.y + 15 },

		() -> {x: 35, y: 305},

		() -> {x: 280, y: 0},

		() -> {x: 0, y: 140},

		(prev) -> {x: -prev.x + window.innerWidth * .5 - 135, y: -prev.y + window.innerHeight * .5 - 264},

		(prev) -> {x: -prev.x + .4 * window.innerWidth + 60, y: -prev.y + .2 * window.innerHeight + 91},

		() -> {x: 150, y: 0},

		() -> {x: -46, y: 0},

		(prev) -> {x: -prev.x + .07 * window.innerWidth, y: -prev.y + .2 * window.innerHeight},

		() -> {x: 360, y: 360},

		(prev) -> {x: -prev.x + .4 * window.innerWidth + 210, y: -prev.y + .2 * window.innerHeight + 91},

		() -> {x: -150, y: 44},

		() -> {x: 150, y: 0},

		() -> {x: -150, y: 0},

		() -> {x: 150, y: 0},

		() -> {x: -150, y: 0},

		() -> {x: 104, y: 0},

		() -> {x: 46, y: 0}

	]
