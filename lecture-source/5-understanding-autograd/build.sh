latexmk -pdf autograd
cp autograd.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=autograd-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' autograd
cp autograd-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/