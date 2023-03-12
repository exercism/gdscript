extends SceneTree

# Godot's default error message is 'Assertion failed', this will be more informative
const ERROR_MESSAGE = "Expected output was '{expected}', actual output was '{output}'."

# For multiple tests, it might be easier to iterate over a list of test cases
const TEST_CASES = [
    {"method": "hello", "args": [], "expected": "Goodbye, Mars!"},
    {"method": "hello", "args": [], "expected": "Hello, World!"},
]


# Simple test for a specific output of a specific method
func run_tests(script):
    var expected = "Hello, World!"
    var output = script.hello()

    assert(
        output == expected,
        ERROR_MESSAGE.format({"expected": expected, "output": output})
    )


# Parametrized test case
func run_tests_parametrized(script):
    for test_case in TEST_CASES:
        var expected = test_case["expected"]
        var output = script.callv(test_case["method"], test_case["args"])

        assert(
            output == expected,
            ERROR_MESSAGE.format({"expected": expected, "output": output})
        )


func _init():
    var script = preload("hello_world.gd").new()
    run_tests(script)
    run_tests_parametrized(script)
    quit()
