TEX := xelatex
TEXARGS := --output-directory=build --halt-on-error

DOCNAME := WrStat
SOURCES := $(DOCNAME).tex

include tex/Makefile.inc

.PHONY: clean
all: build/$(DOCNAME).pdf

clean:
	@rm -rfv build

build/$(DOCNAME).pdf : $(SOURCES)
	mkdir -p build
	$(TEX) $(TEXARGS) $<
	$(TEX) $(TEXARGS) $<

