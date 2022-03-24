latexmk -pdf attention
cp attention.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=attention-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' attention
cp attention-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/


if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh attention.pdf notwide
    mv attention.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6248/slides/17-attention.pptx
fi