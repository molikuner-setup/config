#!/bin/bash

session="dev"
window=${session}:0
pane=${window}.0

# build panes and windows

# nothing to do

# start everything

tmux send-keys -t "${session}.0" ' clear' Enter
tmux select-window -t "$window"
tmux rename-window "${session}"
tmux select-pane -t "$pane"
