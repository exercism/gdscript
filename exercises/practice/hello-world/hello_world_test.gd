func test_say_hi_(solution_script):
	var want = "Hello, World!"
	var got = solution_script.hello()
	return [got, want, "hello() = %s, expected %s" % [got, want]]
