pdf:
	pdflatex --shell-escape main.tex
	biber main
	pdflatex --shell-escape main.tex

clean:
	-rm -f *.acr
	-rm -f *.alg
	-rm -f *.glg
	-rm -f *.gls
	-rm -f *.xdy
	-rm -f *.aux
	-rm -f *.bbl
	-rm -f *.blg
	-rm -f *.fdb_latexmk
	-rm -f *.fls
	-rm -f *.log
	-rm -f *.toc
	-rm -f *.xdv
	-rm -f *.acn
	-rm -f *.bbl
	-rm -f *.blg
	-rm -f *.ist
	-rm -f *.log
	-rm -f *.out
	-rm -f *.glo
	-rm -f *.lof
	-rm -f *.bak*
	-rm -f *.sbl
	-rm -f *.slg
	-rm -f *.sym
	-rm -f *.bcf
	-rm -f *.lol
	-rm -f *.pyg
	-rm -f *.run.xml
