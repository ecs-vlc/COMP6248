latexmk -pdf relaxation
cp relaxation.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=relaxation-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' relaxation
cp relaxation-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/


if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh relaxation.pdf notwide
    mv relaxation.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6248/slides/17-relaxation.pptx
fi