.DEFAULT_GOAL := run

slides=slides/slides.md

run:
	reveal-md $(slides) --watch

static:
	# echo remove the old files
	rm -rf _static
	# run a new build
	reveal-md $(slides) --static 
	# fix the plugin folders
	cp -a _assets/plugin _static/_assets/_assets

pdf:
	DEBUG=reveal-md reveal-md $(slides) --print _pdf/printed-handouts.pdf --print-size A4 --theme white

cleanup:
	# echo remove the old files
	find _static -mindepth 1 -maxdepth 1 ! -name '.gitkeep' | xargs rm -rf
	find _pdf -mindepth 1 -maxdepth 1 ! -name '.gitkeep'  | xargs rm -rf

