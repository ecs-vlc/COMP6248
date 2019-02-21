latexmk -pdf deepnetworks
cp deepnetworks.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=deepnetworks-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' deepnetworks
cp deepnetworks-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/
