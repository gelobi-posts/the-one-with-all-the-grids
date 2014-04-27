module.exports = () ->

	container = document.querySelector 'div.pageContainer'

	comments = document.createElement('div')
	comments.classList.add 'comments'

	container.appendChild comments



	comments.addEventListener 'click', =>

		`
			var disqus_shortname = 'pouyatestblog';
		   (function () {
		   	var s = document.createElement('script'); s.async = true;
		   	s.type = 'text/javascript';
		   	s.src = '//' + disqus_shortname + '.disqus.com/count.js';
		   	(document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
		   }());
		`


