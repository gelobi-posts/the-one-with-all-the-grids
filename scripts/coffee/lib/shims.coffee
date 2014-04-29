Number.isFinite ?= (value) ->

	typeof value is 'number' and window.isFinite value

if typeof window.performance is 'undefined'

	do ->

		startTime = Date.now()

		now = -> Date.now() - startTime

		window.performance = {"now": now}
