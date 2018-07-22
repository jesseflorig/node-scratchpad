#!/bin/bash
# Author: Jesse Florig
# Purpose: Automatically setup a TMUX session for node scratchpad

SESSION_NAME=scratchpad
EDITOR_COMMAND="vi index.js"
SERVER_COMMAND="npm start"

function send-command () {
  tmux send-keys -t $SESSION_NAME "$1" C-m
}

tmux has-session -t $SESSION_NAME
if [ $? != 0 ]                                       # if the session does not exist
then
  tmux new -s $SESSION_NAME                          # create named session
  send-command "$EDITOR_COMMAND"                     # start vim
  tmux split-window -h -t $SESSION_NAME              # split window horizontally
  send-command "$SERVER_COMMAND"                     # setup backend tunnel
  tmux select-window -t $SESSION_NAME:0.0            # select the first pane
fi                                                   # either way
tmux attach -t $SESSION_NAME                         # attach to named session
