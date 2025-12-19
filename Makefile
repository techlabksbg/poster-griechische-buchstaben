PDFS = poster-nur-griechische-buchstaben.pdf poster-griechische-buchstaben.pdf
TEX = $(PDFS:pdf=tex)
PNGS = $(PDFS:pdf=png)

all: $(PNGS)


%.pdf:	%.tex
	pdflatex $<

%.png:	%.pdf
	convert $< -alpha remove -alpha off  -background white $@

clean:
	rm -f *aux *.log a0header.ps
	
publish: all
	cp -v $(PDFS) $(TEX) $(PNGS) ~/burggraben/mnt/OneDrive/Mathe/plakate/.
