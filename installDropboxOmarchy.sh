#!/bin/sh
omarchy install service dropbox # same as the menu entry: dropbox-cli, libappindicator-gtk3, python-gpgme, nautilus-dropbox
pkill -x dropbox                # kill the instance it starts by hand
systemctl --user enable --now dropbox.service
systemctl --user status dropbox.service --no-pager
