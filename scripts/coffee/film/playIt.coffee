FinishedFilm = require 'tiny-filmmaking-studio/scripts/js/lib/FinishedFilm'
setupLane1 = require './lanes/1'

film = new FinishedFilm

	id: 'introducing-the-guides-panel'

	lane: '1'

	aspectRatio: no

setupLane1 film

film.run()