#!/bin/sh
usage="$(basename "$0") [-hH] -- program to rotate tablet screen horizontally. Default is vertical (i.e. no args)

where:
    -h  show this help text"

rotateVertical=true

while getopts hH flag; do
  case "${flag}" in
  h)
    echo "$usage"
    exit
    ;;
  H)
    rotateVertical=false
    echo 'H'
    ;;
  esac
done

if [ "$rotateVertical" == true ]; then
  echo "rotate vertical"
  xrandr --output DVI-D-0 --right-of HDMI-0 --mode 1920x1080 --rate 60 --rotate right
else
  echo "rotate horizontal"
  xrandr --output DVI-D-0 --right-of HDMI-0 --mode 1920x1080 --rate 60 --rotate normal
fi
# i3 restart
