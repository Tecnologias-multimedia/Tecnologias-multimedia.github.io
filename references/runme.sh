export BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
rm -f citations
grep citation ~/Tecnologias-Multimedia.github.io/study_guide/01-provisioning/index.aux >> citations
grep citation ~/Tecnologias-Multimedia.github.io/study_guide/02-python/index.aux >> citations
grep citation ~/Tecnologias-Multimedia.github.io/study_guide/03-git/index.aux >> citations
grep citation ~/Tecnologias-Multimedia.github.io/study_guide/04-wiring/index.aux >> citations
grep citation ~/Tecnologias-Multimedia.github.io/study_guide/05-minimal/index.aux >> citations
grep citation ~/Tecnologias-Multimedia.github.io/study_guide/06-jitter_impact/index.aux >> citations
grep citation ~/Tecnologias-Multimedia.github.io/study_guide/07-bit-rate_impact/index.aux >> citations
grep citation ~/Tecnologias-Multimedia.github.io/study_guide/08-buffering/index.aux >> citations
grep citation ~/Tecnologias-Multimedia.github.io/study_guide/09-compress/index.aux >> citations
grep citation ~/Tecnologias-Multimedia.github.io/study_guide/11-spatial_decorrelation/index.aux >> citations
grep citation ~/Tecnologias-Multimedia.github.io/study_guide/12-temporal_decorrelation/index.aux >> citations
cat citations >> index.aux
bibtex index
make index.html

