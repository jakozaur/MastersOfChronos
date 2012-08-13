SVG = $(wildcard diagrams/[a-zA-Z0-9]*.svg)
EPS = $(patsubst %.svg, %.eps, $(SVG))

all: thesis.pdf

thesis.pdf: *.tex $(EPS)
#	$(MAKE) -C diagrams
	pdflatex thesis.tex

%.eps: %.svg
	sed -i '' 's/Visual Paradigm for UML Standard Edition(Warsaw University)//' $<
	/Applications/Inkscape.app/Contents/Resources/bin/inkscape $< -P $@
	rm diagrams/*eps-converted-to.pdf

clear:
	rm -f *.toc *.aux *.log

prune: clear
	rm thesis.pdf

.PHONY: clear prune
