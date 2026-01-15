#!/bin/bash
# embed-art.sh
# Batch embed cover art into MP3 and M4A files
# Features:
# 1. Skips files that already have embedded art
# 2. Auto-resizes large covers (>1200px)
# 3. Logs successes and failures

# === CONFIG ===
MUSIC_DIR="$HOME/Music" # Root of your music library
MAX_SIZE=1200           # Max width/height for cover images
LOG_FILE="$HOME/embed-art.log"

mkdir -p "$MUSIC_DIR/.tagged"

echo "=== Embed Art Run: $(date) ===" >>"$LOG_FILE"

# Loop over album directories
find "$MUSIC_DIR" -type d | while read -r dir; do
  # Find cover image
  cover=$(find "$dir" -maxdepth 1 \( \
    -iname 'cover.jpg' -o -iname 'folder.jpg' -o -iname 'front.jpg' \
    \) | head -n 1)
  [ -z "$cover" ] && continue

  # Optional: auto-resize large images
  tmp_cover="$dir/.cover_tmp.jpg"
  convert "$cover" -resize "${MAX_SIZE}x${MAX_SIZE}>" "$tmp_cover" 2>/dev/null || tmp_cover="$cover"

  # Loop over audio files
  for f in "$dir"/*.{mp3,m4a}; do
    [ -e "$f" ] || continue

    # Check if artwork already exists
    if ffprobe -v error -show_entries stream=disposition -select_streams v:0 "$f" | grep -q attached_pic; then
      echo "Skipping: $f (artwork exists)" >>"$LOG_FILE"
      continue
    fi

    basename=$(basename "$f")
    tagged="$dir/.tagged/$basename"

    case "$f" in
    *.mp3)
      ffmpeg -v fatal -y -i "$f" -i "$tmp_cover" \
        -map 0:a -map 1:v \
        -c copy \
        -id3v2_version 3 \
        -metadata:s:v title="Album cover" \
        -metadata:s:v comment="Cover (front)" \
        "$tagged"
      ;;
    *.m4a)
      ffmpeg -v fatal -y -i "$f" -i "$tmp_cover" \
        -map 0:a -map 1:v \
        -c copy \
        -disposition:v:0 attached_pic \
        "$tagged"
      ;;
    esac

    if [ $? -eq 0 ]; then
      echo "Embedded: $f" >>"$LOG_FILE"
    else
      echo "Failed: $f" >>"$LOG_FILE"
    fi
  done

  # Clean up temp cover
  [ "$tmp_cover" != "$cover" ] && rm -f "$tmp_cover"
done

# Replace originals with tagged versions
find "$MUSIC_DIR/.tagged" -type f | while read -r t; do
  dir=$(dirname "$t" | sed 's|/.tagged||')
  mv "$t" "$dir/"
done

# Remove empty .tagged directories
find "$MUSIC_DIR" -type d -name '.tagged' -exec rmdir {} \; 2>/dev/null

echo "=== Embed Art Finished: $(date) ===" >>"$LOG_FILE"
