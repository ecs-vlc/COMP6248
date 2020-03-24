latexmk -pdf autoencoders
cp autoencoders.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=autoencoders-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' autoencoders
cp autoencoders-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/
