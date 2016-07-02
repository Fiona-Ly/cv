all: cv_cn

cv_cn: cv_cn.tex
	xelatex cv_cn.tex

clean:
	rm -f *.pdf
	rm -f *.dvi
	rm -f *.log
	rm -f *.aux
	rm -f *.out
