#!/bin/sh

if [ ! "$1" ]; then
echo No POV file specified
exit 1
fi
povray -I"$1".pov -O"$1"_anim anim.ini
echo "Generating GIF..."
convert -delay 5 -dispose Background "$1"_anim*.png "$1"_anim.gif
echo "Deleting temporal files..."
rm "$1"_anim*.png
#echo "Optimizing GIF..."
#gifsicle -D=2 -d=5 -o "$1"_anim.gif "$1"_anim.gif
#gifsicle -O=100 -o "$1"_anim.gif "$1"_anim.gif
