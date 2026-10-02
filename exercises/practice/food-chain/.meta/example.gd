var REACTIONS = {
	"fly": "I don't know why she swallowed the fly. Perhaps she'll die.",
	"spider": "It wriggled and jiggled and tickled inside her.",
	"bird": "How absurd to swallow a bird!",
	"cat": "Imagine that, to swallow a cat!",
	"dog": "What a hog, to swallow a dog!",
	"goat": "Just opened her throat and swallowed a goat!",
	"cow": "I don't know how she swallowed a cow!",
	"horse": "She's dead, of course!",
}
var ANIMALS = {1: "fly", 2: "spider", 3: "bird", 4: "cat", 5: "dog", 6: "goat", 7: "cow", 8: "horse"}
# Map each animal to it's food/subject, i.e. what it eats.
var SUBJECTS = {}

func _init():
	for i in range(7):
		SUBJECTS[ANIMALS[i + 2]] = ANIMALS[i + 1]
	# Unlike all other animals, the bird does not simply eat a "spider". It is more detailed.
	SUBJECTS["bird"] = "spider that wriggled and jiggled and tickled inside her"

func verse(num: int) -> String:
	var out = ["I know an old lady who swallowed a %s." % ANIMALS[num]]
	if num > 1:
		out.append(REACTIONS[ANIMALS[num]])
	if num < 8:
		for i in range(num, 1, -1):
			out.append("She swallowed the %s to catch the %s." % [ANIMALS[i], SUBJECTS[ANIMALS[i]]])
		out.append(REACTIONS[ANIMALS[1]])
	return "\n".join(out)


func recite(start_verse: int, end_verse: int) -> String:
	var out = []
	for i in range(start_verse, end_verse + 1):
		out.append(verse(i))
		if i != end_verse:
			out.append("")
	return "\n".join(out)
