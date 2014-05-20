module.exports = (set) ->

	# container = set._makeEl '#interface'
	# .inside set.container

	dynamicContainer = set._makeEl '#interface'
	.inside set.dynamicContainer

	menubar = set._makeEl '#photoshop-menu-bar'
	.inside dynamicContainer

	set._setupDomEl 'Photoshop', 'Menu Bar', menubar, ['opacity']

	editHl = set._makeEl '#photoshop-edit-selected'
	.inside dynamicContainer

	set._setupDomEl 'Photoshop', 'Edit Highlight', editHl, ['opacity']

	editMenu = set._makeEl '#photoshop-edit-menu'
	.inside dynamicContainer

	set._setupDomEl 'Photoshop', 'Edit Menu', editMenu, ['opacity']

	prefHl = set._makeEl '#photoshop-pref-hover'
	.inside dynamicContainer

	set._setupDomEl 'Photoshop', 'Pref Highlight', prefHl, ['opacity', 'translation']

	prefMenu = set._makeEl '#photoshop-pref-menu'
	.inside dynamicContainer

	set._setupDomEl 'Photoshop', 'Pref Menu', prefMenu, ['opacity']

	unitsHl = set._makeEl '#photoshop-units-hover'
	.inside dynamicContainer

	set._setupDomEl 'Photoshop', 'Units Highlight', unitsHl, ['opacity']

	unitsPanel = set._makeEl '#photshop-units-panel'
	.inside dynamicContainer

	set._setupDomEl 'Photoshop', 'Units Panel', unitsPanel, ['opacity', 'translation']

	pixelHl = set._makeEl '#photoshop-pixel-highlight'
	.inside dynamicContainer

	set._setupDomEl 'Photoshop', 'Pixel Highlight', pixelHl, ['opacity', 'translation']

	windowHl = set._makeEl '#photoshop-window-selected'
	.inside dynamicContainer

	set._setupDomEl 'Photoshop', 'Window Highlight', windowHl, ['opacity']

	windowmenu = set._makeEl '#photoshop-window'
	.inside dynamicContainer

	set._setupDomEl 'Photoshop', 'Window', windowmenu, ['opacity']

	extensionsHighlight = set._makeEl '#photoshop-extensions-selected'
	.inside dynamicContainer

	set._setupDomEl 'Photoshop', 'Extension-Heighlight', extensionsHighlight, [
		'translation', 'opacity'
	]

	extensions = set._makeEl '#photoshop-extensions'
	.inside dynamicContainer

	set._setupDomEl 'Photoshop', 'Extensions', extensions, ['opacity']

	guides = set._makeEl '#photoshop-guides'
	.inside dynamicContainer

	set._setupDomEl 'Photoshop', 'Guides', guides, ['opacity']

