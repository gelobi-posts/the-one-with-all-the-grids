Classify = require './Classify'

module.exports = (film) ->

	gridDir = new Classify film, 'Classify', 'Griddify Direction'

	gridDir.addElement document.getElementById 'griddify-direction'

	gridDir.addClasses ['right', 'down', 'left', 'up']

	divOri = new Classify film, 'Classify', 'Divide Orientation'

	divOri.addElement document.getElementById 'divide-orientation'

	divOri.addClasses ['vertical', 'horizontal', 'both']

	wraOri = new Classify film, 'Classify', 'Wrap Orientation'

	wraOri.addElement document.getElementById 'wrap-orientation'

	wraOri.addClasses ['vertical', 'horizontal', 'both']

