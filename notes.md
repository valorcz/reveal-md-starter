# Implementation notes 

* `static` target doesn't work well yet, as the `reveal-md` generator
  only transmits the selected .css and .js files, not the rest of the
  folder. That breaks the static functionality.
* charting doesn't work either, as I need to figure out how to convince
  `reveal-md` to pass my HTML directly to the output.
  * shall I try something similar to webpro/reveal-md#197

## References

* [Mermaid & reveal-md support](https://github.com/webpro/reveal-md/issues/197)
