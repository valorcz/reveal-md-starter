# Implementation notes 

* `static` target doesn't work well yet, as the `reveal-md` generator
  only transmits the selected .css and .js files, not the rest of the
  folder. That breaks the static functionality.
* charting doesn't work well, it breaks the presentation, takes a lot
  of time to render anything, the chart is off-screen mostly (some problem 
  with a `<div>` element, or some other bounding element?)


## References

* [Mermaid & reveal-md support](https://github.com/webpro/reveal-md/issues/197)
