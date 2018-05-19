default:	index.html

index.html:	index.md
		pandoc --number-sections -c utf-8.css -c table.css -i index.md -o index.html
