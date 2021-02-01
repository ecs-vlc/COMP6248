latexmk -pdf mlreview
cp mlreview.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=mlreview-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' mlreview
cp mlreview-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/

if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh mlreview.pdf notwide
    mv mlreview.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6248/slides/2-mlreview.pptx
fi