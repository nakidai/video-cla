all: and.png or.png xor.png

README: README.7
	mandoc -Tutf8 README.7 | col -b > README

and.png: and
	magick -size 500x500 xc:transparent -font Liberation-Mono -pointsize 35 -fill \#BBBBBB -gravity center -annotate +0+0 @and and.png

or.png: or
	magick -size 500x500 xc:transparent -font Liberation-Mono -pointsize 35 -fill \#BBBBBB -gravity center -annotate +0+0 @or or.png

xor.png: xor
	magick -size 500x500 xc:transparent -font Liberation-Mono -pointsize 35 -fill \#BBBBBB -gravity center -annotate +0+0 @xor xor.png
