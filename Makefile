MAIN := main
MAIN_MODELO_UFF := main-modelo-uff
SECTIONS := $(wildcard chapters/*/*.tex)
OTHER := defs.tex chapters.tex
BIBLIOGRAPHY := bibliography.tex

main: $(MAIN_MODELO_UFF).pdf beep

draft: $(MAIN).pdf beep

all: main draft

$(MAIN).pdf: $(MAIN).tex $(SECTIONS) $(BIBLIOGRAPHY) $(OTHER)
	pdflatex $(MAIN) && pdflatex $(MAIN)

$(MAIN_MODELO_UFF).pdf: $(MAIN_MODELO_UFF).tex $(SECTIONS) $(BIBLIOGRAPHY) $(OTHER)
	pdflatex $(MAIN_MODELO_UFF) && pdflatex $(MAIN_MODELO_UFF)

clean:
	rm -f *.{aux,log,out,toc}

cleanall:
	rm -f *.{aux,log,out,pdf,toc}

beep:
	@paplay /usr/share/sounds/freedesktop/stereo/complete.oga &

.PHONY: all main draft clean cleanall beep
