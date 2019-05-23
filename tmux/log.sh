#!/bin/bash

session="log"
window=${session}:0
pane=${window}.0

# build panes and windows

tmux split-window -h -t "$session"
tmux split-window -v -t "$session"
tmux select-pane -t "$pane"
tmux split-window -v -t "$session"

# start everything

tmux send-keys -t "${window}.0" ' clear' Enter " tail -F /var/log/fail2ban.log" Enter
tmux send-keys -t "${window}.1" ' clear' Enter " tail -F /var/log/mail.log" Enter
tmux send-keys -t "${window}.2" ' clear' Enter " tail -F /var/log/pihole.log" Enter
# TODO check which one was here
# tmux send-keys -t "${window}.3" ' clear' Enter ""
tmux select-window -t "${window}"
tmux rename-window "${session}"
