all: poster-nur-griechische-buchstaben.pdf poster-griechische-buchstaben.pdf


%.pdf:	%.tex
	pdflatex $<