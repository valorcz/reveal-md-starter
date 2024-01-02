.DEFAULT_GOAL := run

run:
	reveal-md slides/ 

static:
	reveal-md slides/ --static

pdf:
	reveal-md slides/slides.md --print _pdf/printed-handouts.pdf
