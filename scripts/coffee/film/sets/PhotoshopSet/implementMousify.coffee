Mousify = require './tools/Mousify'

module.exports = (film) ->

	m = new Mousify film.sets.photoshop.cursor, film, 'Mouse', 'Mousify'

	m.addElement film.sets.thePanel.thePanel.node.querySelector '#griddify-button'


