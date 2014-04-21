ResponsiveRestorableDisplay = require 'tiny-filmmaking-studio/scripts/js/lib/film/ResponsiveRestorableDisplay'
SimplePlayer = require 'tiny-filmmaking-studio/scripts/js/lib/player/SimplePlayer'
FinishedFilm = require 'tiny-filmmaking-studio/scripts/js/lib/FinishedFilm'
setupLane1 = require './lanes/1'
laneData = require "../../../lanes/1.json"
Moosh = require 'moosh'
Kilid = require 'kilid'

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

# setTimeout =>

# 	do display.fullscreen

# 	player.timeControl.play()

# , 1000