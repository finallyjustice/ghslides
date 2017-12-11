SRCFILE=ghslides.tex
PDFFILE=ghslides.pdf

all: pdf

pdf: ${SRCFILE}
	pdflatex ghslides.tex
	pdflatex ghslides.tex

open: ${PDFFILE}
	gnome-open ${PDFFILE}

clean:
	rm -rf ${PDFFILE} *.aux *.log *.nav *.out *.snm *.toc *.vrb *.dvi *.ps
