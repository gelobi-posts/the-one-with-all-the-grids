Classify = require './tools/Classify'

module.exports = (film) ->

	film.sets.thePanel.thePanel

	gridDir = new Classify film, 'Classify', 'Griddify Direction'
	gridDir.addElement thePanelEl.querySelector '#griddify-direction'
	gridDir.addClasses ['right', 'down', 'left', 'up']

	divOri = new Classify film, 'Classify', 'Divide Orientation'
	divOri.addElement thePanelEl.querySelector '#divide-orientation'
	divOri.addClasses ['vertical', 'horizontal', 'both']

	wraOri = new Classify film, 'Classify', 'Wrap Orientation'
	wraOri.addElement thePanelEl.querySelector '#wrap-orientation'
	wraOri.addClasses ['vertical', 'horizontal', 'both']

	gridBtn = new Classify film, 'Classify', 'Griddify Button'
	gridBtn.addElement thePanelEl.querySelector '#griddify-button'

	divBtn = new Classify film, 'Classify', 'Divide Button'
	divBtn.addElement thePanelEl.querySelector '#divide-button'

	wraBtn = new Classify film, 'Classify', 'Wrap Button'
	wraBtn.addElement thePanelEl.querySelector '#wrap-button'


