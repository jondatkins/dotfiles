#!/usr/bin/env bash
FILE_PATH=${1:-.}
cd "$FILE_PATH"

#!/usr/bin/env bash

# Remove files with whitespaces in them

find . -depth -name "*[[:space:]]*" | while IFS= read -r file; do
  dir=$(dirname "$file")
  base=$(basename "$file")
  if [[ "$base" != "$newbase" ]]; then
    # mv -v "$file" "$dir/$newbase"
    echo "removing $base"
    rm "$base"
  fi
done
# for f in *\ *; do mv "$f" "${f// /_}"; done
# find . -name "*" -exec rename -v 's/\.andnav$/\.tile/i' {} \;
# find . -depth -name "* *" -execdir rename 's/ /_/g' "{}" \;
# find . -name "* *" -type f | rename 's/ /_/g'
# find . -name "* *" -type f | rename test bar *.txt
