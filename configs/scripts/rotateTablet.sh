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
  # i3-msg restart
  xrandr --output DVI-D-0 --right-of HDMI-0 --mode 1920x1080 --rate 60 --rotate right
  # Put the stylus on the left of the main monitor
  xsetwacom set "Wacom One Pen Display 13 Pen stylus" MapToOutput 1920x1080+1920+0
else
  echo "rotate horizontal"
  # i3-msg restart
  xrandr --output DVI-D-0 --below HDMI-0 --mode 1920x1080 --rate 60 --rotate normal
  # Below config puts tablet underneath the main monitor
  xsetwacom set "Wacom One Pen Display 13 Pen stylus" MapToOutput 1920x1080+0+1080
fi
# i3 restart
