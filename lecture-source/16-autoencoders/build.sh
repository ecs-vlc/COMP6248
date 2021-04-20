latexmk -pdf autoencoders
cp autoencoders.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=autoencoders-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' autoencoders
cp autoencoders-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/

if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh autoencoders.pdf notwide
    mv autoencoders.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6248/slides/16-autoencoders.pptx
fi