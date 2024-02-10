# Test chromatic scales
func test_chromatic_scale_with_sharps(scale):
	scale.tonic = "C"
	var expected = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]
	return [scale.chromatic(), expected]


func test_chromatic_scale_with_flats(scale):
	scale.tonic = "F"
	var expected = ["F", "Gb", "G", "Ab", "A", "Bb", "B", "C", "Db", "D", "Eb", "E"]
	return [scale.chromatic(), expected]


# Test scales with specified intervals
func test_simple_major_scale(scale):
	scale.tonic = "C"
	var expected = ["C", "D", "E", "F", "G", "A", "B", "C"]
	return [scale.interval("MMmMMMm"), expected]


func test_major_scale_with_sharps(scale):
	scale.tonic = "G"
	var expected = ["G", "A", "B", "C", "D", "E", "F#", "G"]
	return [scale.interval("MMmMMMm"), expected]


func test_major_scale_with_flats(scale):
	scale.tonic = "F"
	var expected = ["F", "G", "A", "Bb", "C", "D", "E", "F"]
	return [scale.interval("MMmMMMm"), expected]


func test_minor_scale_with_sharps(scale):
	scale.tonic = "f#"
	var expected = ["F#", "G#", "A", "B", "C#", "D", "E", "F#"]
	return [scale.interval("MmMMmMM"), expected]


func test_minor_scale_with_flats(scale):
	scale.tonic = "bb"
	var expected = ["Bb", "C", "Db", "Eb", "F", "Gb", "Ab", "Bb"]
	return [scale.interval("MmMMmMM"), expected]


func test_dorian_mode(scale):
	scale.tonic = "d"
	var expected = ["D", "E", "F", "G", "A", "B", "C", "D"]
	return [scale.interval("MmMMMmM"), expected]


func test_mixolydian_mode(scale):
	scale.tonic = "Eb"
	var expected = ["Eb", "F", "G", "Ab", "Bb", "C", "Db", "Eb"]
	return [scale.interval("MMmMMmM"), expected]


func test_lydian_mode(scale):
	scale.tonic = "a"
	var expected = ["A", "B", "C#", "D#", "E", "F#", "G#", "A"]
	return [scale.interval("MMMmMMm"), expected]


func test_phrygian_mode(scale):
	scale.tonic = "e"
	var expected = ["E", "F", "G", "A", "B", "C", "D", "E"]
	return [scale.interval("mMMMmMM"), expected]


func test_locrian_mode(scale):
	scale.tonic = "g"
	var expected = ["G", "Ab", "Bb", "C", "Db", "Eb", "F", "G"]
	return [scale.interval("mMMmMMM"), expected]


func test_harmonic_minor(scale):
	scale.tonic = "d"
	var expected = ["D", "E", "F", "G", "A", "Bb", "Db", "D"]
	return [scale.interval("MmMMmAm"), expected]


func test_octatonic(scale):
	scale.tonic = "C"
	var expected = ["C", "D", "D#", "F", "F#", "G#", "A", "B", "C"]
	return [scale.interval("MmMmMmMm"), expected]


func test_hexatonic(scale):
	scale.tonic = "Db"
	var expected = ["Db", "Eb", "F", "G", "A", "B", "Db"]
	return [scale.interval("MMMMMM"), expected]


func test_pentatonic(scale):
	scale.tonic = "A"
	var expected = ["A", "B", "C#", "E", "F#", "A"]
	return [scale.interval("MMAMA"), expected]


func test_enigmatic(scale):
	scale.tonic = "G"
	var expected = ["G", "G#", "B", "C#", "D#", "F", "F#", "G"]
	return [scale.interval("mAMMMmm"), expected]


