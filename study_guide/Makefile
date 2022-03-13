include $(HOME)/LaTeX_templates/Makefile

$(HOME)/repos/Xubuntu_install/:
	git clone git@github.com:vicente-gonzalez-ruiz/Xubuntu_install.git $@

$(HOME)/repos/Xubuntu_install/index.html:	$(HOME)/repos/Xubuntu_install/
	make -C $(HOME)/repos/Xubuntu_install/

$(HOME)/repos/ALSA/:
	git clone git@github.com:vicente-gonzalez-ruiz/ALSA.git $@

$(HOME)/repos/ALSA/index.html:	$(HOME)/repos/ALSA/
	make -C $(HOME)/repos/ALSA/

default:	$(HOME)/repos/Xubuntu_install/index.html $(HOME)/repos/ALSA/index.html index.html

#index.html:	index.md
		#pandoc -c utf-8.css -c table.css -i index.md -o index.html
		#pandoc --number-sections -c utf-8.css -c table.css -i index.md -o index.html
