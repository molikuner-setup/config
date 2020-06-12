#!/bin/bash

session="main"
window=${session}:0
pane=${window}.0

# build panes and windows
tmux split-window -h -t "$session"
tmux split-window -v -t "$session" 'htop'

# start everything
tmux select-window -t "${window}"
tmux rename-window "${session}"
tmux select-pane -t "${window}.1"
tmux select-pane -t "${pane}"

