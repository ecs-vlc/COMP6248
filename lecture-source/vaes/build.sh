latexmk -pdf vaes
cp vaes.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=vaes-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' vaes
cp vaes-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/
