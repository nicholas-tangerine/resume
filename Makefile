OUTDIR := ~/Downloads
OUTFILE := $(OUTDIR)/"Nicholas Tang RESUME.pdf"

.PHONY: all

all: resume.pdf clean update

resume.pdf: resume.tex
	pdflatex resume.tex

clean:
	rm -rf *.aux *.log *.out

update: resume.pdf
	cp $< $(OUTFILE)
