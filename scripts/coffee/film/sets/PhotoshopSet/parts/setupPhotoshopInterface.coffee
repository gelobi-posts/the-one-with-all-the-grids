module.exports = (set) ->

	bg = set._makeEl '#photoshop-bg'
	.inside set.container

	set._setupDomEl 'Photoshop', 'BG', bg, [
		'translation', 'scale', 'opacity', 'rotation'
	]

	menubar = set._makeEl '#photoshop-menu-bar'
	.inside set.container

	set._setupDomEl 'Photoshop', 'Menu Bar', menubar, ['opacity']

	windowHl = set._makeEl '#photoshop-window-selected'
	.inside set.container

	set._setupDomEl 'Photoshop', 'Window Highlight', windowHl, ['opacity']

	windowmenu = set._makeEl '#photoshop-window'
	.inside set.container

	set._setupDomEl 'Photoshop', 'Window', windowmenu, ['opacity']

	extensionsHighlight = set._makeEl '#photoshop-extensions-selected'
	.inside set.container

	set._setupDomEl 'Photoshop', 'Extension-Heighlight', extensionsHighlight, [
		'translation', 'opacity'
	]

	extensions = set._makeEl '#photoshop-extensions'
	.inside set.container

	set._setupDomEl 'Photoshop', 'Extensions', extensions, ['opacity']

	guides = set._makeEl '#photoshop-guides'
	.inside set.container

	set._setupDomEl 'Photoshop', 'Guides', guides, ['opacity']

	tools = set._makeEl '#photoshop-tools'
	.inside set.container
	.perspective 1000

	set._setupDomEl 'Photoshop', 'Tools', tools, [
		'translation', 'scale', 'opacity', 'rotation'
	]

	layers = set._makeEl '#photoshop-layers'
	.inside set.container
	.perspective 1000

	set._setupDomEl 'Photoshop', 'Layers', layers, [
		'translation', 'scale', 'opacity', 'rotation'
	]
