cp -r Convolution.pdf ../../docs/lectures/
git add ../../docs/lectures/Convolution.pdf

cp Convolution-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/

if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh convolution.pdf notwide
    mv convolution.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6248/slides/10-convolution.pptx
fi
