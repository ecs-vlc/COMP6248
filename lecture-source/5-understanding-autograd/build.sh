latexmk -pdf autograd
cp autograd.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=autograd-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' autograd
cp autograd-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/

if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh autograd.pdf notwide
    mv autograd.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6248/slides/5-autograd.pptx
fi