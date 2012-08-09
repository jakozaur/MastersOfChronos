SVG = $(wildcard [a-zA-Z0-9]*.svg)
EPS = $(patsubst %.svg, %.eps, $(SVG))

all: $(EPS)

%.eps: %.svg
	sed -i '' 's/Visual Paradigm for UML Standard Edition(Warsaw University)//' $<
	/Applications/Inkscape.app/Contents/Resources/bin/inkscape $< -P $@

