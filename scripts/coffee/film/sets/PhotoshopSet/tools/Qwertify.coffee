module.exports = class Qwertify

	constructor: (@film, @groupName, @actorName) ->

		do @_addToTheatre
		do @_defineVars

	_addToTheatre: ->

		@objName = String(@groupName + ' ' + @actorName).replace(/\s+/g, '-').toLowerCase()

		@actor = @film.theatre.model.graph.getGroup @groupName
		.getActor @actorName

		@film.theatre.timeline.addObject @objName, @

		@actor.addPropOfObject 'Type', @objName, 'type', 0
		@actor.addPropOfObject 'Focus', @objName, 'focus', 0

		return

	_defineVars: ->

		@_values = []
		@_lengths = []
		@_totalLength = 0

		@focus = if isMobile then @_touchFocus else @_desktopFocus

		return

	addInput: (@_input) ->

	addValues: (@_values) ->

		@_lengths[0] = 0

		for i in [1..@_values.length]

			@_lengths[i] = @_lengths[i - 1] + @_values[i - 1].length

		@_totalLength = @_lengths.length

		return

	focus: (state) ->

	_desktopFocus: (state) ->

		if state is 1 then @_input.focus() else @_input.blur()

		return

	_touchFocus: (state) ->

		if state is 1 then @_input.classList.add 'focus' else @_input.classList.remove 'focus'

		return

	type: (progress) ->

		if @_totalLength is 0 then return

		progress = progress|0

		for i in [1..@_totalLength]

			if progress <= @_lengths[i]

				index = progress - @_lengths[i - 1]

				break

		@_input.value = @_values[i - 1].substring(0, index)

		return

`function detectmob() {
 if( navigator.userAgent.match(/Android/i)
 || navigator.userAgent.match(/webOS/i)
 || navigator.userAgent.match(/iPhone/i)
 || navigator.userAgent.match(/iPad/i)
 || navigator.userAgent.match(/iPod/i)
 || navigator.userAgent.match(/BlackBerry/i)
 || navigator.userAgent.match(/Windows Phone/i)
 ){
    return true;
  }
 else {
    return false;
  }
}`

isMobile = detectmob()

