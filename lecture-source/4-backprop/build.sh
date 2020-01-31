latexmk -pdf backprop
cp backprop.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=backprop-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' backprop
cp backprop-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/
