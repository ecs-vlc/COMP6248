latexmk -pdf differentiate
cp differentiate.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=differentiate-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' differentiate
cp differentiate-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/

if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh differentiate.pdf notwide
    mv differentiate.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6248/slides/3-differentiate.pptx
fi