MAIN := main
MAIN_MODELO_UFF := main-modelo-uff
SECTIONS := $(wildcard chapters/*/*.tex)
OTHER := defs.tex chapters.tex
BIBLIOGRAPHY := bibliography.tex

main: $(MAIN).pdf

modelo-uff: $(MAIN_MODELO_UFF).pdf

all: main modelo-uff

$(MAIN).pdf: $(MAIN).tex $(SECTIONS) $(BIBLIOGRAPHY) $(OTHER)
	pdflatex $(MAIN) && pdflatex $(MAIN)

$(MAIN_MODELO_UFF).pdf: $(MAIN_MODELO_UFF).tex $(SECTIONS) $(BIBLIOGRAPHY) $(OTHER)
	pdflatex $(MAIN_MODELO_UFF) && pdflatex $(MAIN_MODELO_UFF)

clean:
	rm -f *.{aux,log,out,toc}

cleanall:
	rm -f *.{aux,log,out,pdf,toc}

.PHONY: all main modelo-uff clean cleanall
