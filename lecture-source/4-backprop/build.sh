latexmk -pdf backprop
cp backprop.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=backprop-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' backprop
cp backprop-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/

if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh backprop.pdf notwide
    mv backprop.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6248/slides/4-backprop.pptx
fi