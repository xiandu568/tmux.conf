#===============================================================================
# default bindings
# bind-key        C-b send-prefix
# ==================> unbind ==> C-u
# bind-key        C-o rotate-window
# bind-key        C-z suspend-client
# bind-key      Space next-layout
# bind-key          ! break-pane
# bind-key          " split-window
# ==================> with full height/width
# bind-key          # list-buffers
# bind-key          $ command-prompt -I #S "rename-session '%%'"
# bind-key          % split-window -h
# bind-key          & confirm-before -p "kill-window #W? (y/n)" kill-window
# bind-key          ' command-prompt -p index "select-window -t ':%%'"
# bind-key          ( switch-client -p
# bind-key          ) switch-client -n
# bind-key          , command-prompt -I #W "rename-window '%%'"
# bind-key          - delete-buffer
# bind-key          . command-prompt "move-window -t '%%'"
# bind-key          0 select-window -t :0
# bind-key          1 select-window -t :1
# bind-key          2 select-window -t :2
# bind-key          3 select-window -t :3
# bind-key          4 select-window -t :4
# bind-key          5 select-window -t :5
# bind-key          6 select-window -t :6
# bind-key          7 select-window -t :7
# bind-key          8 select-window -t :8
# bind-key          9 select-window -t :9
# bind-key          : command-prompt
# bind-key          ; last-pane
# bind-key          = choose-buffer
# bind-key          ? list-keys
# bind-key          D choose-client
# bind-key          L switch-client -l
# ==================> [-r] resize-pane right
# bind-key          [ copy-mode
# bind-key          ] paste-buffer
# bind-key          c new-window
# bind-key          d detach-client
# bind-key          f command-prompt "find-window '%%'"
# bind-key          i display-message
# bind-key          l last-window
# ==================> select-pane right
# bind-key          n next-window
# bind-key          o select-pane -t :.+
# bind-key          p previous-window
# bind-key          q display-panes
# bind-key          r refresh-client
# bind-key          s choose-tree
# ==================> synchronize-panes ==> S
# bind-key          t clock-mode
# bind-key          w choose-window
# bind-key          x confirm-before -p "kill-pane #P? (y/n)" kill-pane
# bind-key          z resize-pane -Z
# bind-key          { swap-pane -U
# bind-key          } swap-pane -D
# bind-key          ~ show-messages
# bind-key      PPage copy-mode -u
# bind-key -r      Up select-pane -U
# bind-key -r    Down select-pane -D
# bind-key -r    Left select-pane -L
# bind-key -r   Right select-pane -R
# bind-key        M-1 select-layout even-horizontal
# bind-key        M-2 select-layout even-vertical
# bind-key        M-3 select-layout main-horizontal
# bind-key        M-4 select-layout main-vertical
# bind-key        M-5 select-layout tiled
# bind-key        M-n next-window -a
# bind-key        M-o rotate-window -D
# bind-key        M-p previous-window -a
# bind-key -r    M-Up resize-pane -U 5
# bind-key -r  M-Down resize-pane -D 5
# bind-key -r  M-Left resize-pane -L 5
# bind-key -r M-Right resize-pane -R 5
# bind-key -r    C-Up resize-pane -U
# bind-key -r  C-Down resize-pane -D
# bind-key -r  C-Left resize-pane -L
# bind-key -r C-Right resize-pane -R
#
#===============================================================================
# New bindings
# bind-key          R refresh-client
# bind-key          \ split-window right
# bind-key          | split-window left
# bind-key          - split-window down
# bind-key          _ split-window above
# bind-key          " split-window right full hieght
# bind-key          % split-window down full width
# bind-key          h select-pane left
# bind-key          j select-pane down
# bind-key          k select-pane up
# bind-key          l select-pane right
# bind-key          H resize-pane left  5
# bind-key          J resize-pane down  5
# bind-key          K resize-pane up    5
# bind-key          L resize-pane right 5
#===============================================================================
#===============================================================================
# unbind-key -a
# set prefix
# set -g prefix2 C-u
set -g prefix C-u
bind-key C-u send-prefix
unbind-key C-b

# split-window -bdfhIvPZ
#   -h: horizontal split
#   -v: vertical split
#   -l: size (lines/columns)
#   -b: left/above
#   -f: full height/width
bind-key '\' split-window -h
bind-key '|' split-window -hb
bind-key '-' split-window -v
bind-key '_' split-window -vb
bind-key '"' split-window -hf
bind-key '%' split-window -vf

# Zoom tmux and vim
bind-key z resize-pane -Z

# window movement
# support use w
#bind-key -r C-h select-window -t:-
#bind-key -r C-l select-window -t:+

# select-pane like vim
bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R

# resize-pane like vim
bind-key H resize-pane -L 5
bind-key J resize-pane -D 5
bind-key K resize-pane -U 5
bind-key L resize-pane -R 5

bind-key -r H resize-pane -L 5
bind-key -r J resize-pane -D 5
bind-key -r K resize-pane -U 5
bind-key -r L resize-pane -R 5

# set s to synchronize-panes, S to s choose-tree
bind-key s set synchronize-panes
bind-key S choose-tree

# Save pane
bind-key Q capture-pane -S - -E - \; save-buffer /tmp/tmux.pane.txt \; delete-buffer

# use vim key bindings
setw -g mode-keys   vi
setw -g status-keys vi

# popup
bind T display-popup -E ""

# clear both screen and history
bind -n C-l send-keys C-l \; run 'sleep 0.2' \; clear-history
