if status is-interactive
    # Commands to run in interactive sessions can go here
end

load_nvm > /dev/stderr

set -gx EDITOR /usr/bin/nvim
set -x FZF_DEFAULT_OPTS " \
         --multi --cycle --keep-right -1 \
         --height=80% --layout=reverse --info=default \
         --preview-window right:50%:wrap \
         --preview '__fzf_preview {}' \
         --ansi"
set -x FZF_ALT_C_COMMAND "fd -t d . \$dir"
set -x FZF_CTRL_T_COMMAND "rg --files --no-require-git"


