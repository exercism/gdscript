# Tests

You'll need [Godot installed][installation] correctly to use the test runner.

## Running tests

The [test runner][] is used to load and test solutions.
When an exercise is downloaded locally, a copy of the test runner is included, along with a shell script to invoke it.

To run the exercise, simply run the `run_tests` script in the exercise directory using `bash`.

For example,

```bash
cd "$(exercism workspace)/gdscript/hello-world"
bash run_tests
```

[installation]: https://exercism.org/docs/tracks/gdscript/installation
[test runner]: https://raw.githubusercontent.com/exercism/gdscript-test-runner/refs/heads/main/bin/test_runner.gd
