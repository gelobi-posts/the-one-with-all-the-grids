Classify = require './tools/Classify'

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

	gridBtn = new Classify film, 'Classify', 'Griddify Button'
	gridBtn.addElement document.getElementById 'griddify-button'

	divBtn = new Classify film, 'Classify', 'Divide Button'
	divBtn.addElement document.getElementById 'divide-button'

	wraBtn = new Classify film, 'Classify', 'Wrap Button'
	wraBtn.addElement document.getElementById 'wrap-button'


