#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

[ -f "$CURRENT_DIR/theme.tmux" ] && tmux source-file "$CURRENT_DIR/theme.tmux"
[ -f "$CURRENT_DIR/key.tmux"   ] && tmux source-file "$CURRENT_DIR/key.tmux"
[ -f "$CURRENT_DIR/hook.tmux"  ] && tmux source-file "$CURRENT_DIR/hook.tmux"
[ -f "$CURRENT_DIR/tpm.tmux"   ] && tmux source-file "$CURRENT_DIR/tpm.tmux"

# bind 'R' key to reload config
tmux bind-key R source-file "$CURRENT_DIR/tmux.conf"
tmux set-environment -g TMUX_PLUGIN_MANAGER_PATH "$CURRENT_DIR/plugins/"

TPM_DIR="$CURRENT_DIR/plugins/tpm"
if [ ! -d "$TPM_DIR" ]; then
	git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
fi

bash "$TPM_DIR/bin/install_plugins"
bash "$TPM_DIR/tpm"
