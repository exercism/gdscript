const CODONS = {
	"AUG": "Methionine",
	"UUU": "Phenylalanine",
	"UUC": "Phenylalanine",
	"UUA": "Leucine",
	"UUG": "Leucine",
	"UCU": "Serine",
	"UCC": "Serine",
	"UCA": "Serine",
	"UCG": "Serine",
	"UAU": "Tyrosine",
	"UAC": "Tyrosine",
	"UGU": "Cysteine",
	"UGC": "Cysteine",
	"UGG": "Tryptophan",
	"UAA": "STOP",
	"UAG": "STOP",
	"UGA": "STOP",
}


func proteins(strand):
	var proteins = []
	for i in range(0, len(strand), 3):
		var amino = strand.substr(i, 3)
		if amino not in CODONS:
			return null
		var protein = CODONS[amino]
		if protein == "STOP":
			break
		proteins.append(protein)
	return proteins
