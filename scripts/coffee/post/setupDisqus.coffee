module.exports = () ->

	container = document.querySelector 'div.pageContainer'
	console.log container
	link = document.createElement('div').classList.add('comments')

	container.appendChild link

