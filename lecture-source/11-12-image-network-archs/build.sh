# cp -r Architectures ../../docs/lectures/
# git add ../../docs/lectures/Architectures

cp Architectures-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/

if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh Architectures.pdf notwide
    mv Architectures.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6248/slides/11-12-architectures.pptx
fi
