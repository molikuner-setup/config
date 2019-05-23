#!/bin/bash

session="adb"
window="${session}:0"
pane="${window}.0"

# build panes and windows

tmux split-window -v -p 90 -t "$pane"
tmux split-window -h -p 30 -t "$pane"

tmux set -t "${window}.2" -q remain-on-exit on

# start everything

tmux send-keys -t "${pane}" ' echo "you just recently deleted this function --- cant exec anything predefined now"'
tmux send-keys -t "${window}.1" ' adb connect 10.10.0.28'
tmux respawn-pane -k -t "${window}.2" '~/workspace/android-dev-tools/super-logcat.sh System.err AndroidRuntime LifecyclerMonitor com.molikuner'
tmux select-window -t "$window"
tmux rename-window "${seesion}"
tmux select-pane -t "$pane"
