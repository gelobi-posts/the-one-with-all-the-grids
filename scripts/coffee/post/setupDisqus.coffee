module.exports = () ->

	container = document.querySelector 'div.pageContainer'

	comments = document.createElement 'div'
	comments.classList.add 'comments'

	container.appendChild comments

	showComments = document.createElement 'div'
	showComments.classList.add 'show-comments'
	showComments.innerHTML = 'Show Comments'

	comments.appendChild showComments

	disqus = document.createElement 'div'
	disqus.setAttribute 'id', 'disqus_thread'

	comments.appendChild disqus

	showComments.addEventListener 'click', =>

		`
		var disqus_shortname = 'pouyatestblog';


		    var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
		    dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
		    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);

		`

		return

	return


