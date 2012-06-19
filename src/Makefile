all: thesis.pdf

thesis.pdf: clear
	pdflatex main.tex
	pdflatex main.tex
	mv main.pdf $@

clear: 
	rm -f *.toc *.aux *.log

prune: clear
	rm thesis.pdf

.PHONY: thesis.pdf clear prune
