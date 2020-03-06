latexmk -pdf rnns
cp rnns.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=rnns-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' rnns
cp rnns-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/