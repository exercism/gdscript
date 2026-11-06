func test_empty_rna_sequence_results_in_no_proteins(solution_script):
	var got = solution_script.proteins("")
	var want = []
	return [got, want, "proteins(%s) = %s, expected %s" % ["", got, want]]


func test_methionine_rna_sequence(solution_script):
	var got = solution_script.proteins("AUG")
	var want = ["Methionine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["AUG", got, want]]


func test_phenylalanine_rna_sequence_1(solution_script):
	var got = solution_script.proteins("UUU")
	var want = ["Phenylalanine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UUU", got, want]]


func test_phenylalanine_rna_sequence_2(solution_script):
	var got = solution_script.proteins("UUC")
	var want = ["Phenylalanine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UUC", got, want]]


func test_leucine_rna_sequence_1(solution_script):
	var got = solution_script.proteins("UUA")
	var want = ["Leucine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UUA", got, want]]


func test_leucine_rna_sequence_2(solution_script):
	var got = solution_script.proteins("UUG")
	var want = ["Leucine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UUG", got, want]]


func test_serine_rna_sequence_1(solution_script):
	var got = solution_script.proteins("UCU")
	var want = ["Serine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UCU", got, want]]


func test_serine_rna_sequence_2(solution_script):
	var got = solution_script.proteins("UCC")
	var want = ["Serine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UCC", got, want]]


func test_serine_rna_sequence_3(solution_script):
	var got = solution_script.proteins("UCA")
	var want = ["Serine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UCA", got, want]]


func test_serine_rna_sequence_4(solution_script):
	var got = solution_script.proteins("UCG")
	var want = ["Serine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UCG", got, want]]


func test_tyrosine_rna_sequence_1(solution_script):
	var got = solution_script.proteins("UAU")
	var want = ["Tyrosine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UAU", got, want]]


func test_tyrosine_rna_sequence_2(solution_script):
	var got = solution_script.proteins("UAC")
	var want = ["Tyrosine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UAC", got, want]]


func test_cysteine_rna_sequence_1(solution_script):
	var got = solution_script.proteins("UGU")
	var want = ["Cysteine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UGU", got, want]]


func test_cysteine_rna_sequence_2(solution_script):
	var got = solution_script.proteins("UGC")
	var want = ["Cysteine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UGC", got, want]]


func test_tryptophan_rna_sequence(solution_script):
	var got = solution_script.proteins("UGG")
	var want = ["Tryptophan"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UGG", got, want]]


func test_stop_codon_rna_sequence_1(solution_script):
	var got = solution_script.proteins("UAA")
	var want = []
	return [got, want, "proteins(%s) = %s, expected %s" % ["UAA", got, want]]


func test_stop_codon_rna_sequence_2(solution_script):
	var got = solution_script.proteins("UAG")
	var want = []
	return [got, want, "proteins(%s) = %s, expected %s" % ["UAG", got, want]]


func test_stop_codon_rna_sequence_3(solution_script):
	var got = solution_script.proteins("UGA")
	var want = []
	return [got, want, "proteins(%s) = %s, expected %s" % ["UGA", got, want]]


func test_sequence_of_two_protein_codons_translates_into_proteins(solution_script):
	var got = solution_script.proteins("UUUUUU")
	var want = ["Phenylalanine", "Phenylalanine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UUUUUU", got, want]]


func test_sequence_of_two_different_protein_codons_translates_into_proteins(solution_script):
	var got = solution_script.proteins("UUAUUG")
	var want = ["Leucine", "Leucine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UUAUUG", got, want]]


func test_translate_rna_strand_into_correct_protein_list(solution_script):
	var got = solution_script.proteins("AUGUUUUGG")
	var want = ["Methionine", "Phenylalanine", "Tryptophan"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["AUGUUUUGG", got, want]]


func test_translation_stops_if_stop_codon_at_beginning_of_sequence(solution_script):
	var got = solution_script.proteins("UAGUGG")
	var want = []
	return [got, want, "proteins(%s) = %s, expected %s" % ["UAGUGG", got, want]]


func test_translation_stops_if_stop_codon_at_end_of_two_codon_sequence(solution_script):
	var got = solution_script.proteins("UGGUAG")
	var want = ["Tryptophan"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UGGUAG", got, want]]


func test_translation_stops_if_stop_codon_at_end_of_three_codon_sequence(solution_script):
	var got = solution_script.proteins("AUGUUUUAA")
	var want = ["Methionine", "Phenylalanine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["AUGUUUUAA", got, want]]


func test_translation_stops_if_stop_codon_in_middle_of_three_codon_sequence(solution_script):
	var got = solution_script.proteins("UGGUAGUGG")
	var want = ["Tryptophan"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UGGUAGUGG", got, want]]


func test_translation_stops_if_stop_codon_in_middle_of_six_codon_sequence(solution_script):
	var got = solution_script.proteins("UGGUGUUAUUAAUGGUUU")
	var want = ["Tryptophan", "Cysteine", "Tyrosine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UGGUGUUAUUAAUGGUUU", got, want]]


func test_sequence_of_two_non_stop_codons_does_not_translate_to_a_stop_codon(solution_script):
	var got = solution_script.proteins("AUGAUG")
	var want = ["Methionine", "Methionine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["AUGAUG", got, want]]


func test_unknown_amino_acids_not_part_of_a_codon_can_t_translate(solution_script):
	var got = solution_script.proteins("XYZ")
	var want = null
	return [got, want, "proteins(%s) = %s, expected %s" % ["XYZ", got, want]]


func test_incomplete_rna_sequence_can_t_translate(solution_script):
	var got = solution_script.proteins("AUGU")
	var want = null
	return [got, want, "proteins(%s) = %s, expected %s" % ["AUGU", got, want]]


func test_incomplete_rna_sequence_can_translate_if_valid_until_a_stop_codon(solution_script):
	var got = solution_script.proteins("UUCUUCUAAUGGU")
	var want = ["Phenylalanine", "Phenylalanine"]
	return [got, want, "proteins(%s) = %s, expected %s" % ["UUCUUCUAAUGGU", got, want]]
