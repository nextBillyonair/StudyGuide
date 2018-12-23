PDFLATEX:=pdflatex
BIBTEX:=bibtex


TEX_SRC=study_guide.tex

${TEX_SRC:.tex=.pdf}:%.pdf: %.tex %.bib
	$(PDFLATEX) $<
	# $(BIBTEX) ${<:.tex=}
	$(PDFLATEX) $<
	$(PDFLATEX) $<

clean:
	rm -f *.out *.aux *.log *.bbl *.blg *.pdf


.PHONY: clean
