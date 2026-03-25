#!/bin/bash
LEFT_PCT=${1:-15}
RIGHT_PCT=${2:-15}
mkdir -p cropped

for f in *.jpg; do
	W=$(magick "$f" -format "%w" info:)
	LX=$(echo "scale=0; $W * $LEFT_PCT / 100" | bc)
	RX=$(echo "scale=0; $W * $RIGHT_PCT / 100" | bc)
	CW=$(echo "scale=0; $W - $LX - $RX" | bc)
	magick "$f" -crop "${CW}x+${LX}+0" +repage "cropped/$f"
done
echo "Done. Cropped images saved to cropped/"
