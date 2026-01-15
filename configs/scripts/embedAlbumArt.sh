#!/usr/bin/env bash
find Music -type d | while read -r dir; do
  cover=$(find "$dir" -maxdepth 1 \( \
    -iname 'cover.jpg' -o \
    -iname 'folder.jpg' -o \
    -iname 'front.jpg' \
    \) | head -n 1)

  [ -z "$cover" ] && continue

  mkdir -p "$dir/.tagged"

  for f in "$dir"/*.mp3 "$dir"/*.m4a; do
    [ -e "$f" ] || continue

    case "$f" in
    *.mp3)
      ffmpeg -loglevel error -y \
        -i "$f" -i "$cover" \
        -map 0:a -map 1:v \
        -c copy \
        -id3v2_version 3 \
        -metadata:s:v title="Album cover" \
        -metadata:s:v comment="Cover (front)" \
        "$dir/.tagged/$(basename "$f")"
      ;;
    *.m4a)
      ffmpeg -loglevel error -y \
        -i "$f" -i "$cover" \
        -map 0:a -map 1:v \
        -c copy \
        -disposition:v:0 attached_pic \
        "$dir/.tagged/$(basename "$f")"
      ;;
    esac
  done
done
