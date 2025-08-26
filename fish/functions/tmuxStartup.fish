function tmuxStartup
    if type -q tmux
        if not set -q TMUX
            tmux attach-session
            or begin 
                set choice (dialog --menu "Which template do you want?" 15 40 5 \
                    1 "Lecture" \
                    2 "Hobby Thingy" \
                    3 "C Programming" \
                    4 "OS Things" \
                    5 "Don't open a tmux session" \
                    3>&1 1>&2 2>&3)
                clear
                fastfetch

                switch $choice
                    case 1
                        cd ~/Semester2 
                        tmux new-session -d
                        tmux attach-session 
                    case 2
                        tmux new-session -d
                        tmux split-window -h
                        tmux split-window -v
                        tmux send-keys -t 0.1 "clear" Enter
                        tmux send-keys -t 0.2 "clear" Enter
                        tmux send-keys -t 0.0 "clear" Enter
                        tmux select-pane -t 0.0
                        tmux send-keys -t 0.1 "nvim ~/Documents/ToDo/README.md" Enter
                        sleep 0.2
                        tmux attach-session
                    case 3
                        cd /home/kitsune/Programming/Programmieren2-Uebungen/C
                        tmux new-session -d
                        tmux split-window -h
                        tmux split-window -v
                        tmux send-keys -t 0.1 "clear" Enter
                        tmux send-keys -t 0.2 "clear" Enter
                        tmux send-keys -t 0.0 "clear" Enter
                        tmux select-pane -t 0.0
                        tmux send-keys -t 0.1 "printProgrammingInformation" Enter
                        sleep 0.2
                        tmux attach-session
                    case 4
                        tmux new-session -d
                        tmux split-window -h
                        tmux split-window -v
                        tmux send-keys -t 0.0 "clear" Enter
                        tmux send-keys -t 0.1 "clear" Enter
                        tmux send-keys -t 0.2 "clear" Enter
                        tmux select-pane -t 0.0
                        sleep 0.2
                        tmux send-keys -t 0.1 "clear && printOsInformation" Enter
                        tmux attach-session
                    case 5
                        cd ~
                end                
            end
        end
    end
end
