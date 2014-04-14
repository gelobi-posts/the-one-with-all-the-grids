Classify = require './Classify'

module.exports = (film) ->

	gridDir = new Classify film, 'Classify', 'Griddify Direction'

	gridDir.addElement document.getElementById 'griddify-direction'

	gridDir.addClasses '', 'right', 'down', 'left', 'up'

