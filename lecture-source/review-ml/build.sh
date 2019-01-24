latexmk -pdf mlreview
cp mlreview.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=mlreview-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' mlreview
cp mlreview-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/
