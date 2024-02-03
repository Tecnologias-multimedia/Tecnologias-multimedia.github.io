export BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
rm -f citations
grep citation ~/repos/Tecnologias-multimedia.github.io/contents/framework/index.aux >> citations
grep citation ~/repos/Tecnologias-multimedia.github.io/contents/minimal/index.aux >> citations
grep citation ~/repos/Tecnologias-multimedia.github.io/contents/NAT_traversal/index.aux >> citations
grep citation ~/repos/Tecnologias-multimedia.github.io/contents/jitter/index.aux >> citations
grep citation ~/repos/Tecnologias-multimedia.github.io/contents/echo_cancellation/index.aux >> citations
grep citation ~/repos/Tecnologias-multimedia.github.io/contents/threshold_of_hearing/index.aux >> citations
grep citation ~/repos/Tecnologias-multimedia.github.io/contents/simultaneous_masking/index.aux >> citations
grep citation ~/repos/Tecnologias-multimedia.github.io/contents/BR_control/index.aux >> citations
grep citation ~/repos/Tecnologias-multimedia.github.io/contents/transform_coding/index.aux >> citations
grep citation ~/repos/Tecnologias-multimedia.github.io/contents/high_resolution_ToH/index.aux >> citations
cat citations >> index.aux
bibtex index
make index.html

