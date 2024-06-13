#!/usr/bin/env bash
# grab only the pacman installed packages
awk -F"sudo pacman --needed --noconfirm -S " '/-S/{print $2}' installDeps.sh
# remvoe comments
grep -o '^[^#]*' installDeps.sh
sed -e '/[[:space:]]\+$/s///' installDepsNoComments.sh >installDepsNoComments.sh
sed 's/ *$//' installDepsNoComments.sh
sed 's/[[:blank:]]*$//' installDepsNoComments.sh
# remove trailing white space
sed 's/\s*//' installDepsNoComments.sh
# remove blank lines
sed -i '/^$/d' pacmanPackagesTerminal
sed "s/ /\n/g" <<<"This is for example" >example.txt
# put packages on separate lines
sed -i 's/ /\n/g' pacmanPackagesTerminal
