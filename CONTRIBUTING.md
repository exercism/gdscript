# Contributing

In general, ask on the forum for maintainer approval before creating any PR or starting on any work.
Maintainers may not be insterested in whatever work you do, or changes may need to be applied in specific ways.
It is easier to ask first.

Any issue or PR where AI is used to respond to comments will be closed immediately.
Maintainer take the time to review PRs and respond to comments.
Maintainers are happy to interact with humans; maintainers are not interested in engaging with LLMs via issues and PRs.

## Implementing new practice exercises

### Workflow

```
# Use the configlet to set things up.
$ ./bin/fetch-configlet
$ ./bin/configlet create --practice-exercise $slug -a $author -d $difficulty
# Sort `config.json`.
$ sorted=$( jq '  (.exercises.practice |= sort_by(.slug)) |   .exercises.practice |= sort_by(.difficulty)' config.json ) && echo "$sorted" > config.json
# Add the test runner.
$ ./bin/update_test_runner
# It's recommended you copy a .meta/template.j2 from another exercise as a starting point.
# Edit the template file and use it to regenerate tests. The problem spec repo should be updated at least once.
$ ./bin/generate_tests [--no-pull]
# Solve the exercise and validate by running the tests.
$ ( cd exercises/practice/$slug && bash run_tests; )
```

### Error handling

Other languages use exceptions (Python, Java) or multiple return values (Go) to report errors.
The GDScript core libraries tend to use `push_error()` and `return null`.
For practice exercises, `return null` is how we choose to handle errors.
