.DEFAULT_GOAL := run

run:
	reveal-md slides/slides.md --watch

static:
	reveal-md slides/slides.md --static

pdf:
	reveal-md slides/slides.md --print _pdf/printed-handouts.pdf
