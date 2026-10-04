func simulate_game(player_a: Array, player_b: Array) -> Dictionary:
	var hand_a := values(player_a)
	var hand_b := values(player_b)
	var turn_a := true
	var pile: Array[int] = []
	var seen: Dictionary = {}
	var tricks := 0
	var cards_played := 0
	var debt := 0

	while true:
		if pile.is_empty():
			var state := "%s|%s|%s" % [hand_a, hand_b, turn_a]
			if seen.has(state):
				return {"status": "loop", "tricks": tricks, "cards": cards_played}
			seen[state] = true

		var active_hand: Array[int] = hand_a if turn_a else hand_b
		var other_hand: Array[int] = hand_b if turn_a else hand_a

		if active_hand.is_empty():
			return {
				"status": "finished",
				"tricks": tricks + (1 if not pile.is_empty() else 0),
				"cards": cards_played,
			}

		var card_value: int = active_hand.pop_front()
		pile.append(card_value)
		cards_played += 1

		if card_value > 0:
			debt = card_value
			turn_a = not turn_a
		elif debt > 0:
			debt -= 1
			if debt == 0:
				other_hand.append_array(pile)
				pile.clear()
				tricks += 1
				if hand_a.is_empty() or hand_b.is_empty():
					return {"status": "finished", "tricks": tricks, "cards": cards_played}
				turn_a = not turn_a
		else:
			turn_a = not turn_a

	return {}


func values(cards: Array) -> Array[int]:
	var values: Array[int] = []
	for card in cards:
		values.append(value(card))
	return values


func value(card: String) -> int:
	match card:
		"J": return 1
		"Q": return 2
		"K": return 3
		"A": return 4
		_:   return 0
