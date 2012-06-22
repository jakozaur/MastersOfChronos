all: thesis.pdf

thesis.pdf: *.tex
	pdflatex thesis.tex
	pdflatex thesis.tex

clear:
	rm -f *.toc *.aux *.log

prune: clear
	rm thesis.pdf

.PHONY: clear prune
