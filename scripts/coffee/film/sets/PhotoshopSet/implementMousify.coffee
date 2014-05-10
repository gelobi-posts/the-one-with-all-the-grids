Mousify = require './tools/Mousify'

module.exports = (film) ->

	m = new Mousify film.sets.photoshop.cursor, film, 'Mouse', 'Mousify', [

		() -> return {x: window.innerWidth * .5, y: window.innerHeight * .5},

		(prev) -> return {x: -prev.x + 430, y: -prev.y + 20 },

		() -> return {x: 0, y: 70},

		() -> return {x: 160, y: 0},

		() -> return {x: 0, y: 40},

		(prev) -> return {x:  -prev.x + window.innerWidth * .4 + 100, y: -prev.y +  window.innerHeight * .2 + 40},

		() -> return {x: 0, y: 44},

		() -> return {x: 0, y: 44},

		() -> return {x: -50, y: -75},

		() -> return {x: 150, y: 0},

		() -> return {x: -150, y: 0 },

		() -> return {x: 150, y: 0},

		() -> return {x: -150, y: 0},

		() -> return {x: 150, y: 0},

		() -> return {x: -50, y:0},

		(prev) -> return {x: -prev.x + .07 * window.innerWidth, y: -prev.y + .2 * window.innerHeight},

		() -> return {x: .5 * window.innerHeight, y: .5 * window.innerHeight},

		(prev) -> return {x: -prev.x + .4 * window.innerWidth + 200, y: -prev.y + .2 * window.innerHeight + 53},

		(prev) -> {x: -prev.x + 85, y: -prev.y + 20},

		() -> {x: 35, y: 305},

		() -> {x: 280, y: 150},

		(prev) -> {x: -prev.x + window.innerWidth * .5 - 135, y: -prev.y + window.inneeHeight * .5 - 264},

		(prev) -> {x: -prev.x + .4 * window.innerWidth + 50, y: -prev.y + .2 * window.innerHeight + 97},

		() -> {x: 150, y: 0},

		() -> {x: -50, y: 0},

		(prev) -> return {x: -prev.x + .07 * window.innerWidth, y: -prev.y + .2 * window.innerHeight},

		() -> return {x: .5 * window.innerHeight, y: .5 * window.innerHeight},

		(prev) -> return {x: -prev.x + .4 * window.innerWidth + 200, y: -prev.y + .2 * window.innerHeight + 97},

		() -> return {x: -150, y: 44},

		() -> return {x: 150, y: 0},

		() -> return {x: -150, y: 0},

		() -> return {x: 150, y: 0},

		() -> return {x: -150, y: 0},

		() -> return {x: 100, y: 0},

		() -> return {x: 50, y: 0}

	]
