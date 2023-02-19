#export BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
rm -f references
grep citation framework/index.aux >> references
grep citation minimal/index.aux >> references
grep citation latency/index.aux >> references
grep citation BR_control/index.aux >> references
grep citation transform_coding/index.aux >> references
cat references >> index.aux
bibtex index
make index.html

