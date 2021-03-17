latexmk -pdf lstm
cp lstm.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=lstm-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' lstm
cp lstm-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/

if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh lstm.pdf notwide
    mv lstm.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6248/slides/14-lstm.pptx
fi