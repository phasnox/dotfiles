export FZF_DEFAULT_COMMAND='ag -l'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
function _fzf_compgen_path
  ag -l
end

set SPACEFISH_CHAR_SYMBOL ♱
set fish_greeting "♱          Crux Sancta sit mihi lux          ♱"

source ~/.dotfiles/fish/phasnox.fish

# Add to ssh agent
ssh-add -q ~/.ssh/work ~/.ssh/personal
