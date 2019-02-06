latexmk -pdf optimisation
cp optimisation.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=optimisation-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' optimisation
cp optimisation-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/