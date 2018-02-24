tmux has-session -t ct
if [ $? != 0 ]
#if [ $? == 0 ]
then
tmux new-session -s ct -n ct -d
tmux send-keys -t ct 'cd ~/' C-m
tmux send-keys -t ct 'vim' C-m
tmux split-window -v -t ct
tmux select-layout -t ct main-horizontal
tmux send-keys -t ct:1.2 'cd ~/' C-m
tmux new-window -n console -t ct
tmux send-keys -t ct:2 'cd ~/' C-m
tmux select-window -t ct:1
fi
tmux attach -t ct
