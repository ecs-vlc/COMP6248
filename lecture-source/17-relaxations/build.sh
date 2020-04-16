latexmk -pdf relaxation
cp relaxation.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=relaxation-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' relaxation
cp relaxation-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/
