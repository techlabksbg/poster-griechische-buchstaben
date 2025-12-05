all: poster-nur-griechische-buchstaben.pdf poster-griechische-buchstaben.pdf


%.pdf:	%.tex
	pdflatex $<

clean:
	rm -f *aux *.log a0header.ps