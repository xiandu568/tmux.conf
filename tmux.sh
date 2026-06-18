#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

[ -f "$CURRENT_DIR/theme.tmux" ] && tmux source "$CURRENT_DIR/theme.tmux"
[ -f "$CURRENT_DIR/key.tmux"   ] && tmux source "$CURRENT_DIR/key.tmux"
[ -f "$CURRENT_DIR/tpm.tmux"   ] && tmux source "$CURRENT_DIR/tpm.tmux"
[ -f "$HOME/.tmux.conf"        ] && tmux source "$HOME/.tmux.conf"

# bind 'R' key to reload config
tmux bind-key R source-file $CURRENT_DIR/tmux.conf
tmux set-environment -g "$TMUX_PLUGIN_MANAGE_PATH"  "$CURRENT_DIR/plugins/"
tmux set-environment -g "$DEFAULT_TPM_ENV_VAR_NAME" "$CURRENT_DIR/plugins/"

TPM_DIR="$CURRENT_DIR/plugins/tpm"
[ -d "$TPM_DIR" ] || git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"

bash "$TPM_DIR/tpm"
