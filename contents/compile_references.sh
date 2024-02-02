export BIBINPUTS=":.:/home/vruiz/repos/bibs/:"
make clean
make index.pdf
rm -f references
grep citation framework/index.aux >> references
grep citation minimal/index.aux >> references
grep citation NAT_traversal/index.aux >> references
grep citation jitter/index.aux >> references
grep citation echo_cancellation/index.aux >> references
grep citation BR_control/index.aux >> references
grep citation transform_coding/index.aux >> references
grep citation high_resolution_ToH/index.aux >> references
grep citation custom_ToH/index.aux >> references
grep citation simultaneous_masking/index.aux >> references
cat references >> index.aux
bibtex index
make index.html
