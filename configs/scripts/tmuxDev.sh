#!/bin/sh
tmux has-session -t development
if [ $? != 0 ]; then
  tmux new-session -s development -n editor -d
  tmux send-keys -t development 'cd /var/www/htdocs/' C-m
  tmux send-keys -t development 'vim' C-m
  tmux split-window -v -t development
  tmux split-window -v -t development
  tmux select-layout -t development main-horizontal
  tmux send-keys -t development:0.1 'cd /var/www/htdocs/' C-m
  tmux new-window -n console -t development
  tmux send-keys -t development:1 'cd /var/www/htdocs/' C-m
  tmux select-window -t development:0
fi
tmux attach -t development
