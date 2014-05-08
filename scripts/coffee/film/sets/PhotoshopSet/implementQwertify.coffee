Qwertify = require './tools/Qwertify'

module.exports = (film) ->

	thePanelEl = film.sets.thePanel.thePanel.node

	gridQ = new Qwertify film, 'Qwertify', 'Griddify'

	gridQ.addInput thePanelEl.querySelector '#griddify-input'

	gridQ.addValues ['100 40', '80 10 10']

	divideQ = new Qwertify film, 'Qwertify', 'Divide'

	divideQ.addInput thePanelEl.querySelector '#divide-input'

	divideQ.addValues ['4']

	wrapQ = new Qwertify film, 'Qwertify', 'Wrap'

	wrapQ.addInput thePanelEl.querySelector '#wrap-input'

	wrapQ.addValues ['0 10 10', '0 10 -50']