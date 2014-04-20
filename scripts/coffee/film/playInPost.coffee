ResponsiveRestorableDisplay = require 'tiny-filmmaking-studio/scripts/js/lib/film/ResponsiveRestorableDisplay'
FinishedFilm = require 'tiny-filmmaking-studio/scripts/js/lib/FinishedFilm'
setupLane1 = require './lanes/1'
laneData = require "../../../lanes/1.json"

film = new FinishedFilm

	id: 'introducing-the-guides-panel'

	lane: laneData

display = new ResponsiveRestorableDisplay document.body, document.getElementById 'filmSpace'

film.display = display

setupLane1 film

film.run()