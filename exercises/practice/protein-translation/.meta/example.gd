const CODON_TO_PROTEINE = {
	'AUG': 'Methionine',
	'UUU': 'Phenylalanine',
	'UUC': 'Phenylalanine',
	'UUA': 'Leucine',
	'UUG': 'Leucine',
	'UCU': 'Serine',
	'UCC': 'Serine',
	'UCA': 'Serine',
	'UCG': 'Serine',
	'UAU': 'Tyrosine',
	'UAC': 'Tyrosine',
	'UGU': 'Cysteine',
	'UGC': 'Cysteine',
	'UGG': 'Tryptophan',
	'UAA': 'STOP',
	'UAG': 'STOP',
	'UGA': 'STOP'
}


func proteins(strand):
	var protein_list = []
	for i in range(0, len(strand), 3):
		var codon = strand.substr(i, 3)
		var proteine = CODON_TO_PROTEINE[codon]
		if proteine == 'STOP':
			break
		protein_list.append(proteine)
	return protein_list
