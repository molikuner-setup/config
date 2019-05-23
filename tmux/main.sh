#!/bin/bash

session="main"
window=${session}:0
pane=${window}.0

# build panes and windows

tmux split-window -h -t "$session"
tmux split-window -v -t "$session" 'htop'

# start everything

tmux send-keys -t "${session}.0" C-z ' clear' Enter
tmux send-keys -t "${session}.1" C-z ' clear' Enter
# tmux send-keys -t "${session}.2" C-z ' clear' Enter
# tmux send-keys -t "${session}.2" ' htop' Enter t
tmux select-window -t "${window}"
tmux rename-window "${session}"
tmux select-pane -t "${window}.1"
tmux select-pane -t "${pane}"
