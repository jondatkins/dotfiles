#!/usr/bin/env bash
FILE_PATH=$1
cd $FILE_PATH

#!/usr/bin/env bash

# Recursively replace whitespace with underscores in all file and directory names.

find . -depth -name "*[[:space:]]*" | while IFS= read -r file; do
  dir=$(dirname "$file")
  base=$(basename "$file")
  # Replace *only actual* whitespace characters with underscores
  newbase=$(echo "$base" | sed 's/[[:space:]]\+/_/g')
  # Remove any trailing underscores just in case
  newbase="${newbase%%_}"
  if [[ "$base" != "$newbase" ]]; then
    mv -v "$file" "$dir/$newbase"
    # echo $newbase
  fi
done
# for f in *\ *; do mv "$f" "${f// /_}"; done
# find . -name "*" -exec rename -v 's/\.andnav$/\.tile/i' {} \;
# find . -depth -name "* *" -execdir rename 's/ /_/g' "{}" \;
# find . -name "* *" -type f | rename 's/ /_/g'
# find . -name "* *" -type f | rename test bar *.txt
