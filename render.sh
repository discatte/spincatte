#!/bin/sh

if [ ! "$1" ]; then
echo No POV file specified
exit 1
fi
povray -I"$1".pov settings.ini