#!/bin/bash

#!/usr/bin/env bash
set -euo pipefail

install_dir="$HOME/Applications"
desktop_dir="$HOME/.local/share/applications"
base_url="https://download.kde.org/stable/krita"

mkdir -p "$install_dir" "$desktop_dir"

version=$(
  curl -fsSL "$base_url/" |
    grep -oE 'href="[0-9][^"]*/"' |
    cut -d'"' -f2 |
    tr -d '/' |
    sort -V |
    tail -n1
)

if [[ -z "$version" ]]; then
  echo "Could not determine the latest Krita version."
  exit 1
fi

filename="krita-${version}-x86_64.AppImage"
url="$base_url/$version/$filename"
appimage="$install_dir/$filename"

echo "Downloading Krita $version..."
curl -fL "$url" -o "$appimage"
chmod +x "$appimage"

cat >"$desktop_dir/krita.desktop" <<EOF
[Desktop Entry]
Name=Krita
Comment=Digital Painting
Exec=env QT_QPA_PLATFORM=xcb "$appimage" %F
Icon=applications-graphics
Terminal=false
Type=Application
Categories=Graphics;2DGraphics;RasterGraphics;
MimeType=application/x-krita;
EOF

xdg-mime default krita.desktop application/x-krita

ln -sf "$HOME"/Applications/krita-*.AppImage "$HOME/.local/bin/krita"
echo "Krita $version installed successfully."
