module.exports = (set) ->

	container = set._makeEl '#interface'
	.inside set.container

	bg = set._makeEl '#photoshop-bg'
	.inside container

	set._setupDomEl 'Photoshop', 'BG', bg, [
		'translation', 'scaleAll', 'opacity', 'rotation'
	]

	menubar = set._makeEl '#photoshop-menu-bar'
	.inside container

	set._setupDomEl 'Photoshop', 'Menu Bar', menubar, ['opacity']

	editHl = set._makeEl '#photoshop-edit-selected'
	.inside container

	set._setupDomEl 'Photoshop', 'Edit Highlight', editHl, ['opacity']

	editMenu = set._makeEl '#photoshop-edit-menu'
	.inside container

	set._setupDomEl 'Photoshop', 'Edit Menu', editMenu, ['opacity']

	windowHl = set._makeEl '#photoshop-window-selected'
	.inside container

	set._setupDomEl 'Photoshop', 'Window Highlight', windowHl, ['opacity']

	windowmenu = set._makeEl '#photoshop-window'
	.inside container

	set._setupDomEl 'Photoshop', 'Window', windowmenu, ['opacity']

	extensionsHighlight = set._makeEl '#photoshop-extensions-selected'
	.inside container

	set._setupDomEl 'Photoshop', 'Extension-Heighlight', extensionsHighlight, [
		'translation', 'opacity'
	]

	extensions = set._makeEl '#photoshop-extensions'
	.inside container

	set._setupDomEl 'Photoshop', 'Extensions', extensions, ['opacity']

	guides = set._makeEl '#photoshop-guides'
	.inside container

	set._setupDomEl 'Photoshop', 'Guides', guides, ['opacity']

	tools = set._makeEl '#photoshop-tools'
	.inside container
	.perspective 1000

	set._setupDomEl 'Photoshop', 'Tools', tools, [
		'translation', 'scaleAll', 'opacity', 'rotation'
	]

	layers = set._makeEl '#photoshop-layers'
	.inside container
	.perspective 1000

	set._setupDomEl 'Photoshop', 'Layers', layers, [
		'translation', 'scaleAll', 'opacity', 'rotation'
	]

	set.cursor = set._makeEl '#photoshop-pointer-container'
	.inside container

	pointer = set._makeEl '#photoshop-pointer .icon-up-open-2'
	.inside set.cursor

	set._setupDomEl 'Mouse', 'domEl', pointer, [
		'opacity', 'translation'
	]