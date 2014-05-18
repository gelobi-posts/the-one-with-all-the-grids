require '../lib/shims'
ResponsiveRestorableDisplay = require 'tiny-filmmaking-studio/scripts/js/lib/film/ResponsiveRestorableDisplay'
SimplePlayer = require 'tiny-filmmaking-studio/scripts/js/lib/player/SimplePlayer'
FinishedFilm = require 'tiny-filmmaking-studio/scripts/js/lib/FinishedFilm'
setupLane1 = require './lanes/1'
laneData = require "../../../lanes/1.json"
Moosh = require 'moosh'
Kilid = require 'kilid'
El = require 'stupid-dom-interface'

kilid = new Kilid(null, 'kilid').getRootScope()
moosh = new Moosh document.body, kilid

film = new FinishedFilm

	id: 'introducing-the-guides-panel'

	lane: laneData

display = new ResponsiveRestorableDisplay document.body, document.getElementById 'filmSpace'

film.display = display
film.moosh = moosh
film.kilid = kilid


player = new SimplePlayer film

setupLane1 film

film.run()

do ->

	el = El document.getElementById 'film-preview'
	.z 1

	display.on 'layout', ->

		if display.state is 'restored'

			el.x display.currentDims.left
			.y display.currentDims.top

		faded = no

	times = 0

	film.theatre.model.timeControl.on 'time-change', listener = ->

		return if times > 2

		times++

		if times > 1

			film.theatre.model.timeControl.removeEvent 'time-change', listener

			el.opacity 0

			setTimeout ->

				el.detach()

			, 5000

		return