module.exports = (set) ->

	bg = set._makeEl '#photoshop-bg'
	.inside @container

set.@_setupDomEl 'Photoshop', 'BG', bg, [
		'translation', 'scale', 'opacity', 'rotation'
	]

	menubar = set._makeEl '#photoshop-menu-bar'
	.inside @container

	set._setupDomEl 'Photoshop', 'Menu Bar', menubar, ['opacity']

	windowHl = set._makeEl '#photoshop-window-selected'
	.inside @container

	set._setupDomEl 'Photoshop', 'Window Highlight', windowHl, ['opacity']

	windowmenu = set._makeEl '#photoshop-window'
	.inside @container

	set._setupDomEl 'Photoshop', 'Window', windowmenu, ['opacity']

	extensionsHighlight = set._makeEl '#photoshop-extensions-selected'
	.inside @container

	set._setupDomEl 'Photoshop', 'Extension-Heighlight', extensionsHighlight, [
		'translation', 'opacity'
	]

	extensions = set._makeEl '#photoshop-extensions'
	.inside @container

	set._setupDomEl 'Photoshop', 'Extensions', extensions, ['opacity']

	guides = set._makeEl '#photoshop-guides'
	.inside @container

	set._setupDomEl 'Photoshop', 'Guides', guides, ['opacity']

	tools = set._makeEl '#photoshop-tools'
	.inside @container
	.perspective 1000

	set._setupDomEl 'Photoshop', 'Tools', tools, [
		'translation', 'scale', 'opacity', 'rotation'
	]

	layers = set._makeEl '#photoshop-layers'
	.inside @container
	.perspective 1000

	set._setupDomEl 'Photoshop', 'Layers', layers, [
		'translation', 'scale', 'opacity', 'rotation'
	]
