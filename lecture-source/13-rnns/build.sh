latexmk -pdf rnns
cp rnns.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=rnns-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' rnns
cp rnns-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/

if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh rnns.pdf notwide
    mv rnns.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6248/slides/13-rnns.pptx
fi