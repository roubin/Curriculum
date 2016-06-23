name=roubin_cv_2p_french

ifeq ($(shell uname), Darwin)
	texsrc=/Library/TeX/texbin/
	gssrc=/usr/local/bin/
else
	texsrc=''
	gssrc=''
endif


all:
	@make clean
	@make pdf
	@make ref
	@make pdf
	@make clean

pdf:
	@${texsrc}pdflatex ${name}.tex

ref:
#	@${texsrc}latex ${name}.tex
#	@${texsrc}bibtex ${name}
	@${texsrc}bibtex ${name}1
#	@${texsrc}bibtex ${name}2
#	@${texsrc}bibtex ${name}3
#	@${texsrc}bibtex ${name}4
#	@${texsrc}bibtex ${name}5
#	@${texsrc}latex ${name}.tex
#	@${texsrc}latex ${name}.tex

clean:
	@rm -fv ${name}*.tns
	@rm -fv ${name}*.ps
	@rm -fv ${name}*.odt
	@rm -fv ${name}*.log
	@rm -fv ${name}*.dvi
	@rm -fv ${name}*.aux
	@rm -fv ${name}*.bbl
	@rm -fv ${name}*.blg
	@rm -fv ${name}*.out
	@rm -fv btbbl.aux
	@rm -fv btaux.aux
	@rm -fv *.aux
	@find . -name "*~" -exec rm -fv {} \;
