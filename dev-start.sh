#!/bin/bash

# will create 14 pane tmux session 

tmux new-session -d 'ssh username@hostname1'
tmux split-window -d -t 0 -v 'python' 
tmux split-window -d -t 0 -v 'python testfile.py' 
tmux split-window -d -t 2 -v 'ssh username@hostname2'
tmux split-window -d -t 0 -h './testfile -n 4' 
tmux split-window -d -t 2 -h './somescript.sh'
tmux split-window -d -t 0 -h 'python scraper.py'
tmux split-window -d -t 3 -h 'python parser.py'
tmux split-window -d -t 6 -h 'python plotter.py'
tmux split-window -d -t 8 -h 'cd path/to/folder'
tmux split-window -d -t 8 -h 'ssh username@hostname3'
tmux split-window -d -t 10 -h 'ssh username@hostname4'
tmux split-window -d -t 4 -h 'htop'
tmux split-window -d -t 4 -h 'ssh username@hostname5'
tmux attach
