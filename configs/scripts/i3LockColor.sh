#!/bin/sh

BLANK='#00000000'
CLEAR='#ffffff22'
DEFAULT='#00897bE6'
TEXT='#00897bE6'
WRONG='#880000bb'
VERIFYING='#00564dE6'

i3lock \
  --ignore-empty-password \
  --radius 200 \
  --ring-width 19.0 \
  --time-size 70 \
  --date-size 20 \
  --show-failed-attempts \
  --custom-key-commands \
  --pass-power-keys \
  --cmd-power-sleep - XF86Sleep \
  --insidever-color=$CLEAR \
  --ringver-color=$VERIFYING \
  \
  --insidewrong-color=$CLEAR \
  --ringwrong-color=$WRONG \
  \
  --inside-color=$BLANK \
  --ring-color=$DEFAULT \
  --line-color=$BLANK \
  --separator-color=$DEFAULT \
  \
  --verif-color=$TEXT \
  --wrong-color=$TEXT \
  --time-color=$TEXT \
  --date-color=$TEXT \
  --layout-color=$TEXT \
  --keyhl-color=$WRONG \
  --bshl-color=$WRONG \
  \
  --screen 1 \
  --blur 9 \
  --clock \
  --indicator \
  --time-str="%H:%M:%S" \
  --date-str="%A, %Y-%m-%d" \
  --keylayout 1