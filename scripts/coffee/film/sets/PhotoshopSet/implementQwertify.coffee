Qwertify = require '../sets/PhotoshopSet/Qwertify'

module.exports = (film) ->

	gridQ = new Qwertify film, 'Qwertify', 'Griddify'

	gridQ.addInput document.getElementById('griddify-input')

	gridQ.addValues ['10', '20', '30 40', '50']

	divideQ = new Qwertify film, 'Qwertify', 'Divide'

	divideQ.addInput document.getElementById('divide-input')

	divideQ.addValues ['10', '20', '30 40', '50']

	wrapQ = new Qwertify film, 'Qwertify', 'Wrap'

	wrapQ.addInput document.getElementById('wrap-input')