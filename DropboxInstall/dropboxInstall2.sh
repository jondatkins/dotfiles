# cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
# ~/.dropbox-dist/dropboxd
sudo wget -O /etc/systemd/system/dropbox@.service https://raw.githubusercontent.com/joeroback/dropbox/master/dropbox%40.service
sudo systemctl enable dropbox@$(whoami) && sudo systemctl start dropbox@$(whoami)
curl -LO https://www.dropbox.com/download?dl=packages/dropbox.py
wget -O ~/.local/bin/dropbox "https://www.dropbox.com/download?dl=packages/dropbox.py"
sudo mv dropbox.py /opt/
sudo ln -s /opt/dropbox.py /usr/bin/dropbox
