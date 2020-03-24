latexmk -pdf gans
cp gans.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=gans-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' gans
cp gans-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/