#export BIBINPUTS=":.:/home/vruiz/repos/bibs/:"
#make clean
#make index.html
make -C study_guide
#rm -f citations
#grep citation ~/the_sound/index.aux >> citations
#grep citation ~/human_auditory_system/index.aux >> citations
#grep citation ~/human_sound_perception/index.aux >> citations
#grep citation ~/the_light/index.aux >> citations
#grep citation ~/human_visual_system/index.aux >> citations
#grep citation ~/human_light_perception/index.aux >> citations
#cat citations >> index.aux
#bibtex index

make index.html

