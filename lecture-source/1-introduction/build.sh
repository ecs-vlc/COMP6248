latexmk -pdf intro
cp intro.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=intro-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' intro
cp intro-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/
