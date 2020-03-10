latexmk -pdf lstm
cp lstm.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=lstm-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' lstm
cp lstm-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/