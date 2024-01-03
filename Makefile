.DEFAULT_GOAL := run

slides=slides/slides.md

run:
	reveal-md $(slides) --watch

static:
	# echo remove the old files
	rm -rf _static
	# run a new build
	reveal-md $(slides) --static --static-dirs _assets/plugin

pdf:
	reveal-md $(slides) --print _pdf/printed-handouts.pdf --print-size A4

cleanup:
	# echo remove the old files
	find _static -mindepth 1 -maxdepth 1 ! -name '.gitkeep' | xargs rm -rf
	find _pdf -mindepth 1 -maxdepth 1 ! -name '.gitkeep'  | xargs rm -rf

