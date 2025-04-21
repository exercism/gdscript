# Instructions append

## Handling grapheme clusters

- The [built-in `RegEx` class][regex] can be used to find grapheme clusters.
- The regular expression pattern `\X` matches grapheme clusters.
- Backslashes (`\` characters) need to be escaped in regular strings (`"\\X"`), but not in [raw strings][literals] (`r"\X"`).
- `RegEx` has a [method][search_all] that returns an array of `RegExMatch`es.
- Each match object has [a method][get_string] that returns the search result as a string.

[regex]: https://docs.godotengine.org/en/stable/classes/class_regex.html
[literals]: https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html#literals
[search_all]: https://docs.godotengine.org/en/stable/classes/class_regex.html#class-regex-method-search-all
[get_string]: https://docs.godotengine.org/en/stable/classes/class_regexmatch.html#class-regexmatch-method-get-string