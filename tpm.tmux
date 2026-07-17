# *********************
# tpm
set-option -g @plugin 'tmux-plugins/tpm'
set-option -g @plugin 'tmux-plugins/tmux-sensible'
set-option -g @plugin 'nhdaly/tmux-better-mouse-mode'

#set-option -g @plugin 'jaclu/tmux-menus'
#set-option -g @menus_trigger 'M'
#set-option -g @menus_use_cache 0

set-option -g @plugin 'noscript/tmux-mighty-scroll'

set-option -g @plugin                 'laktak/extrakto'
set-option -g set-clipboard           on
set-option -g @extrakto_clip_tool_run "tmux_osc52"
set-option -g @extrakto_popup_size    "60%"
set-option -g @extrakto_copy_key      "tab"   # use tab to copy to clipboard
set-option -g @extrakto_insert_key    "enter" # use enter to insert selection
set-option -g @extrakto_filter_order  "word line all custom"

#set-option -g @plugin 'gcla/tmux-wormhole'

# set-option -g @themepack "powerline/double/orange"
# run-shell ~/.tmux/tmux-themepack/themepack.tmux
set-option -g @plugin 'dracula/tmux'
set-option -g @dracula-plugins           "weather cpu-usage ram-usage time"
set-option -g @dracula-fixed-location    "shenzhen"
set-option -g @dracula-show-left-icon    "#H  ❐  #S  #I  #P"
set-option -g @dracula-left-icon-padding 0
set-option -g @dracula-refresh-rate      10
set-option -g @dracula-show-left-sep     "\ue0c4" #'<U+E0C0> ' # U+e0c0
set-option -g @dracula-show-right-sep    "\ue0b6" #"<U+E0B2>"  # U+e0b2
set-option -g @dracula-cpu-usage-label   "󰍛 "
set-option -g @dracula-ram-usage-label   " "
set-option -g @dracula-show-fahrenheit   false
set-option -g @dracula-show-location     false
set-option -g @dracula-military-time     true
set-option -g @dracula-show-powerline    true
set-option -g @dracula-show-flags        true
set-option -g @dracula-show-timezone     false
set-option -g @dracula-border-contrast   false
set-option -g @dracula-day-month         false

set -g @plugin "loichyan/tmux-toggle-popup"
set -g @plugin 'navahas/tmux-grimoire'
set -g @plugin 'omerxx/tmux-floax'
