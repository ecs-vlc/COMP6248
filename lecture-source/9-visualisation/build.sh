latexmk -pdf visualisation
cp visualisation.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=visualisation-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' visualisation
cp visualisation-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/
