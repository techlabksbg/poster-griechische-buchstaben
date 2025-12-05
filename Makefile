all: poster-nur-griechische-buchstaben.pdf poster-griechische-buchstaben.pdf


%.pdf:	%.tex
	pdflatex $<

clean:
	rm -f *aux *.log a0header.ps
	
publish: all
	cp -v poster-nur-griechische-buchstaben.pdf poster-griechische-buchstaben.pdf poster-nur-griechische-buchstaben.tex poster-griechische-buchstaben.tex ~/burggraben/mnt/OneDrive/Mathe/plakate/.