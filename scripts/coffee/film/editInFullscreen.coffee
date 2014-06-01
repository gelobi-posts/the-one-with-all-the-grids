ResponsiveFullscreenDisplay = require 'tiny-filmmaking-studio/scripts/js/lib/film/ResponsiveFullscreenDisplay'
EditingFilm = require 'tiny-filmmaking-studio/scripts/js/lib/EditingFilm'
setupLane1 = require './lanes/1'

film = new EditingFilm

	id: 'introducing-the-guides-panel'

	lane: '1'

	passphrase: 'qwerty'

	aspectRatio: no

	port: 6546

	sourceResolution: [1680, 1050]

display = new ResponsiveFullscreenDisplay

film.display = display

setupLane1 film

film.run()

window.t = film.theatre.model.timeline