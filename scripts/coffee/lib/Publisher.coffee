fs = require 'fs-extra'
path = require 'path'
nodefn = require 'when/node'
wn = require 'when'
CleanCss = require 'clean-css'
pfs = nodefn.liftAll fs
UglifyJs = require 'uglify-js'

module.exports = class Publisher

	constructor: (modulePath, publishPath) ->

		@modulePath = path.resolve modulePath
		@publishPath = path.resolve publishPath

	publish: ->

		# do @_copyDirectories

		# do @_doTheCss

		# do @_doTheJs

		do @_doTheHtml

	_copyDirectories: ->

		pfs.copy("#{@modulePath}/images", "#{@publishPath}/images")
		pfs.copy("#{@modulePath}/icons", "#{@publishPath}/icons")
		pfs.copy("#{@modulePath}/fonts", "#{@publishPath}/fonts")
		pfs.copy("#{@modulePath}/audio", "#{@publishPath}/audio")

	_doTheCss: ->

		src = "#{@modulePath}/styles/css/public.css"

		dst = "#{@publishPath}/styles/css/public.css"

		pfs.readFile src, {encoding: 'utf-8'}
		.then (source) =>

			c = new CleanCss {relativeTo: "#{@modulePath}/styles/css/"}
			c.minify source

		.then (min) =>

			pfs.writeFile dst, min, {encoding: 'utf-8'}

	_doTheJs: ->

		u = UglifyJs.minify "#{@modulePath}/scripts/dist/public.js"

		pfs.writeFile "#{@publishPath}/scripts/dist/public.js", u.code, {encoding: 'utf-8'}

	_doTheHtml: ->

		pfs.readFile "#{@modulePath}/pages/public.html", {encoding: 'utf-8'}
		.then (source) =>

			source.replace /(\")(\.\.\/)([a-zA-Z0-9\-\.\_\/]+\.)(css|js)/g, '$1./$3$4'

		.then (fixed) =>

			pfs.writeFile "#{@publishPath}/index.html", fixed, {encoding: 'utf-8'}