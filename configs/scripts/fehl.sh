#!/bin/sh
#If no argument is given, just start feh
if [ -z ${1} ]; then
  feh
  exit
fi

#Set different seperator to avoid problems with spaces
IFS='
'

FPATH="$1"
FNAME="$(basename "$FPATH")"
DPATH="$(dirname "$FPATH")"
#If just filename and no path is given, assume that it's in current directory
if [ $DPATH=="" ]; then
  DPATH="."
  FPATH="./$FNAME"
fi
echo "DPATH = $DPATH"
feh --start-at $FPATH $DPATH
