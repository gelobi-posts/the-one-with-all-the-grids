module.exports = ->

	container = document.querySelector 'div.pageContainer'

	comments = document.createElement 'div'
	comments.classList.add 'comments'

	# container.appendChild comments
	container.insertBefore comments, container.querySelector '.footer'

	# showComments = document.createElement 'div'
	# showComments.classList.add 'show-comments'
	# showComments.innerHTML = """<a class="comments-link" href="#disqus_thread">Show Comments</a>"""

	# comments.appendChild showComments

	disqus = document.createElement 'div'
	disqus.setAttribute 'id', 'disqus_thread'

	comments.appendChild disqus

	disqus_shortname = 'gelobi'

	# showComments.addEventListener 'click', (event) =>

	# 	showComments.classList.add 'hidden'

	`

	var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
	dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
	(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);

	`

		# event.preventDefault()
		# return false

	return


