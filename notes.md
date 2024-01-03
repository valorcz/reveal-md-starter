# Implementation notes 

* `static` target doesn't work well yet, as the `reveal-md` generator
  only transmits the selected .css and .js files, not the rest of the
  folder. That breaks the static functionality.
  * A manual copy of what's in the plugin folders helps,
    so at least we have a workaround.
* charting doesn't work well, it breaks the presentation, takes a lot
  of time to render anything, the chart is off-screen mostly (some problem 
  with a `<div>` element, or some other bounding element?)
  * Seems that if we enclose the `<canvas>` tag with 
    `<section>` tags, it'll work. But it also seems that the
    section cannot have any other content, otherwise the box
    calculation for charts will fail, leading to the weird
    behavior described.
* PDF export is broken, no idea why.
  * it seems that disabling charts plugin will solve this.

## References

* [Mermaid & reveal-md support](https://github.com/webpro/reveal-md/issues/197)
