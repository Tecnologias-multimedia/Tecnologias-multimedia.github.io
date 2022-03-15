include $(HOME)/LaTeX_templates/Makefile

# ALSA
$(HOME)/repos/ALSA/:
	git clone git@github.com:vicente-gonzalez-ruiz/ALSA.git $@

$(HOME)/repos/ALSA/index.html:	$(HOME)/repos/ALSA/
	make -C $(HOME)/repos/ALSA/

# sounddevice
$(HOME)/repos/intro_to_sounddevice/:
	git clone git@github.com:vicente-gonzalez-ruiz/intro_to_sounddevice.git $@

$(HOME)/repos/intro_to_sounddevice/index.html:	$(HOME)/repos/intro_to_sounddevice/
	make -C $(HOME)/repos/intro_to_sounddevice/

# JACK
$(HOME)/repos/JACK/:
	git clone git@github.com:vicente-gonzalez-ruiz/JACK.git $@

$(HOME)/repos/JACK/index.html:	$(HOME)/repos/JACK/
	make -C $(HOME)/repos/JACK/

# PulseAudio
$(HOME)/repos/PulseAudio/:
	git clone git@github.com:vicente-gonzalez-ruiz/PulseAudio.git $@

$(HOME)/repos/PulseAudio/index.html:	$(HOME)/repos/PulseAudio/
	make -C $(HOME)/repos/PulseAudio/

# Python_install
$(HOME)/repos/Python_install/:
	git clone git@github.com:vicente-gonzalez-ruiz/Python_install.git $@

$(HOME)/repos/Python_install/index.html:	$(HOME)/repos/Python_install/
	make -C $(HOME)/repos/Python_install/

# quantization
$(HOME)/repos/quantization/:
	git clone git@github.com:vicente-gonzalez-ruiz/quantization.git $@

$(HOME)/repos/quantization/index.html:	$(HOME)/repos/quantization/
	make -C $(HOME)/repos/quantization/

# using_GitHub
$(HOME)/repos/using_GitHub/:
	git clone git@github.com:vicente-gonzalez-ruiz/using_GitHub.git $@

$(HOME)/repos/using_GitHub/index.html:	$(HOME)/repos/using_GitHub/
	make -C $(HOME)/repos/using_GitHub/

# Xubuntu
$(HOME)/repos/Xubuntu_install/:
	git clone git@github.com:vicente-gonzalez-ruiz/Xubuntu_install.git $@

$(HOME)/repos/Xubuntu_install/index.html:	$(HOME)/repos/Xubuntu_install/
	make -C $(HOME)/repos/Xubuntu_install/

default:	$(HOME)/repos/ALSA/index.html \
		$(HOME)/repos/intro_to_sounddevice/index.html \
		$(HOME)/repos/JACK/index.html \
		$(HOME)/repos/PulseAudio/index.html \
		$(HOME)/repos/Python_install/index.html \
		$(HOME)/repos/quantization/index.html \
		$(HOME)/repos/using_GitHub/index.html \
		$(HOME)/repos/Xubuntu_install/index.html \
		index.html
	./compile_references.sh

#index.html:	index.md
		#pandoc -c utf-8.css -c table.css -i index.md -o index.html
		#pandoc --number-sections -c utf-8.css -c table.css -i index.md -o index.html
