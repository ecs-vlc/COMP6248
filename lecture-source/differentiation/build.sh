latexmk -pdf differentiate
cp differentiate.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=differentiate-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' differentiate
cp differentiate-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/