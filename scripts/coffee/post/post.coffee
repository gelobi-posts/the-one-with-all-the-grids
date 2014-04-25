ScrollbarAgnosticContainer = require '../lib/ScrollbarAgnosticContainer'
ResponsiveDisplay = require "tiny-filmmaking-studio/scripts/js/lib/filmPlayer/ResponsiveDisplay"
FilmPlayer = require "tiny-filmmaking-studio/scripts/js/lib/FilmPlayer"

display = new ResponsiveDisplay document.getElementById 'film-space'
player = new FilmPlayer display

new ScrollbarAgnosticContainer document.querySelector '.pageContainer'