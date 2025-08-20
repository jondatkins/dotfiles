cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
wget -O ~/.local/bin/dropbox https://www.dropbox.com/download?dl=packages/dropbox.py
chmod +x ~/.local/bin/dropbox
mkdir -p ~/.local/share/systemd/user
cat >~/.local/share/systemd/user/dropbox.service <<EOF
[Unit]
Description=Dropbox Daemon
After=network.target

[Service]
Type=simple
ExecStart=/home/atreyu/.dropbox-dist/dropboxd
ExecStop=/bin/kill -HUP $MAINPID
Restart=always

[Install]
WantedBy=default.target
EOF

systemctl enable --user dropbox
systemctl start --user dropbox
dropbox throttle unlimited unlimited
