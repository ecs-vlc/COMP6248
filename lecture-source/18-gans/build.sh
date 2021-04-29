latexmk -pdf gans
cp gans.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=gans-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' gans
cp gans-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/


if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh gans.pdf notwide
    mv gans.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6248/slides/18-gans.pptx
fi