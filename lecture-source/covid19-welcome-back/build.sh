latexmk -pdf covid19
cp covid19.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=covid19-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' covid19
cp covid19-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/
