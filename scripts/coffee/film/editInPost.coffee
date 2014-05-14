ResponsiveRestorableDisplay = require 'tiny-filmmaking-studio/scripts/js/lib/film/ResponsiveRestorableDisplay'
EditingFilm = require 'tiny-filmmaking-studio/scripts/js/lib/EditingFilm'
setupLane1 = require './lanes/1'
SimplePlayer = require 'tiny-filmmaking-studio/scripts/js/lib/player/SimplePlayer'

film = new EditingFilm

	id: 'introducing-the-guides-panel'

	lane: '1'

	pass: 'qwerty'

	aspectRatio: no

	port: 6546

	sourceResolution: [1680, 1050]

display = new ResponsiveRestorableDisplay document.body, document.getElementById 'filmSpace'

film.display = display


setupLane1 film

film.run()

player = new SimplePlayer film