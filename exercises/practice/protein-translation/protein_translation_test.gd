func test_methionine_rna_sequence(solution_script):
	var value = "AUG"
	var expected = ["Methionine"]
	return [solution_script.proteins(value), expected]


func test_phenylalanine_rna_sequence_1(solution_script):
	var value = "UUU"
	var expected = ["Phenylalanine"]
	return [solution_script.proteins(value), expected]


func test_phenylalanine_rna_sequence_2(solution_script):
	var value = "UUC"
	var expected = ["Phenylalanine"]
	return [solution_script.proteins(value), expected]


func test_leucine_rna_sequence_1(solution_script):
	var value = "UUA"
	var expected = ["Leucine"]
	return [solution_script.proteins(value), expected]


func test_leucine_rna_sequence_2(solution_script):
	var value = "UUG"
	var expected = ["Leucine"]
	return [solution_script.proteins(value), expected]


func test_serine_rna_sequence_1(solution_script):
	var value = "UCU"
	var expected = ["Serine"]
	return [solution_script.proteins(value), expected]


func test_serine_rna_sequence_2(solution_script):
	var value = "UCC"
	var expected = ["Serine"]
	return [solution_script.proteins(value), expected]


func test_serine_rna_sequence_3(solution_script):
	var value = "UCA"
	var expected = ["Serine"]
	return [solution_script.proteins(value), expected]


func test_serine_rna_sequence_4(solution_script):
	var value = "UCG"
	var expected = ["Serine"]
	return [solution_script.proteins(value), expected]


func test_tyrosine_rna_sequence_1(solution_script):
	var value = "UAU"
	var expected = ["Tyrosine"]
	return [solution_script.proteins(value), expected]


func test_tyrosine_rna_sequence_2(solution_script):
	var value = "UAC"
	var expected = ["Tyrosine"]
	return [solution_script.proteins(value), expected]


func test_cysteine_rna_sequence_1(solution_script):
	var value = "UGU"
	var expected = ["Cysteine"]
	return [solution_script.proteins(value), expected]


func test_cysteine_rna_sequence_2(solution_script):
	var value = "UGC"
	var expected = ["Cysteine"]
	return [solution_script.proteins(value), expected]


func test_tryptophan_rna_sequence(solution_script):
	var value = "UGG"
	var expected = ["Tryptophan"]
	return [solution_script.proteins(value), expected]


func test_stop_codon_rna_sequence_1(solution_script):
	var value = "UAA"
	var expected = []
	return [solution_script.proteins(value), expected]


func test_stop_codon_rna_sequence_2(solution_script):
	var value = "UAG"
	var expected = []
	return [solution_script.proteins(value), expected]


func test_stop_codon_rna_sequence_3(solution_script):
	var value = "UGA"
	var expected = []
	return [solution_script.proteins(value), expected]


func test_sequence_of_two_protein_codons_translates_into_proteins(solution_script):
	var value = "UUUUUU"
	var expected = ["Phenylalanine", "Phenylalanine"]
	return [solution_script.proteins(value), expected]


func test_sequence_of_two_different_protein_codons_translates_into_proteins(solution_script):
	var value = "UUAUUG"
	var expected = ["Leucine", "Leucine"]
	return [solution_script.proteins(value), expected]


func test_translate_rna_strand_into_correct_protein_list(solution_script):
	var value = "AUGUUUUGG"
	var expected = ["Methionine", "Phenylalanine", "Tryptophan"]
	return [solution_script.proteins(value), expected]


func test_translation_stops_if_stop_codon_at_beginning_of_sequence(solution_script):
	var value = "UAGUGG"
	var expected = []
	return [solution_script.proteins(value), expected]


func test_translation_stops_if_stop_codon_at_end_of_two_codon_sequence(solution_script):
	var value = "UGGUAG"
	var expected = ["Tryptophan"]
	return [solution_script.proteins(value), expected]


func test_translation_stops_if_stop_codon_at_end_of_three_codon_sequence(solution_script):
	var value = "AUGUUUUAA"
	var expected = ["Methionine", "Phenylalanine"]
	return [solution_script.proteins(value), expected]


func test_translation_stops_if_stop_codon_in_middle_of_three_codon_sequence(solution_script):
	var value = "UGGUAGUGG"
	var expected = ["Tryptophan"]
	return [solution_script.proteins(value), expected]


func test_translation_stops_if_stop_codon_in_middle_of_six_codon_sequence(solution_script):
	var value = "UGGUGUUAUUAAUGGUUU"
	var expected = ["Tryptophan", "Cysteine", "Tyrosine"]
	return [solution_script.proteins(value), expected]


