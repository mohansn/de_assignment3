all:assignment3.pdf
assignment3.pdf:assignment3.dvi
	dvipdf assignment3.dvi
assignment3.dvi:assignment3.tex
	latex assignment3.tex
.PHONY:clean
clean:
	-rm -fv *.toc *.log *.dvi *.pdf *~ *.aux
.PHONY:rebuild
rebuild:
	make clean all
.PHONY:force
force:
	latex assignment3.tex && make assignment3.pdf
