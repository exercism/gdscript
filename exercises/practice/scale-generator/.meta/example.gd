const ASCENDING_INTERVALS = ['m', 'M', 'A']
const CHROMATIC_SCALE = ['A', 'A#', 'B', 'C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#']
const FLAT_CHROMATIC_SCALE = ['A', 'Bb', 'B', 'C', 'Db', 'D', 'Eb', 'E', 'F', 'Gb', 'G', 'Ab']
const FLAT_KEYS = ['F', 'Bb', 'Eb', 'Ab', 'Db', 'Gb', 'd', 'g', 'c', 'f', 'bb', 'eb']

@export var tonic : String


func chromatic():
	return _reorder_chromatic_scale()


func interval(intervals):
	var last_index = 0
	var pitches = []
	var scale = _reorder_chromatic_scale()
	
	for interval in intervals:
		pitches.append(scale[last_index])
		last_index += ASCENDING_INTERVALS.find(interval) + 1
	
	pitches.append(tonic.capitalize())
	
	return pitches


func _reorder_chromatic_scale():
	var chromatic_scale = (FLAT_CHROMATIC_SCALE if tonic in FLAT_KEYS else CHROMATIC_SCALE)
	var index = chromatic_scale.find(tonic.capitalize())
	return chromatic_scale.slice(index) + chromatic_scale.slice(0, index)
