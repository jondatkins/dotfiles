#!/usr/bin/env bash
mkdir -p ~/.local/share/applications
cp /usr/share/applications/org.kde.krita.desktop ~/.local/share/applications/
nvim ~/.local/share/applications/org.kde.krita.desktop
# Exec=krita %F
# Exec=env QT_QPA_PLATFORM=xcb krita %F
# update-desktop-database ~/.local/share/applications
