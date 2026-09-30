# Tests

You'll need [Godot installed][installation] correctly to use the test runner.

## Running tests

The [test runner][] is used to load and test solutions.
To run the test runner, download it locally then use `godot` to run the test runner.
In the future, the test runner will automatically be downloaded alongside exercises when using `exercism download`.

### Fetching the test runner

The following shell snippet can be used to download the test runner.

```bash
exercism download --track gdscript --exercise hello-world
cd "$(exercism workspace)/gdscript"
curl --remote-name https://raw.githubusercontent.com/exercism/gdscript-test-runner/refs/heads/main/bin/test_runner.gd
```

### Running the test runner

The test runner is run using `godot` in headless mode (no IDE).
`-s` or `--script` tells Godot to run the test runner script.
The test runner expects two arguments: the slug and the path to the solution directory.

```bash
godot --headless -s to/test_runner.gd -- <solution-slug> <path/to/solution>
```

For example,

```bash
godot --headless -s "$(exercism workspace)/gdscript/test_runner.gd" -- hello-world "$(exercism workspace)/gdscript/hello-world
```


[installation]: https://exercism.org/docs/tracks/gdscript/installation
[test runner]: https://raw.githubusercontent.com/exercism/gdscript-test-runner/refs/heads/main/bin/test_runner.gd
