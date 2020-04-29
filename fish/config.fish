export FZF_DEFAULT_COMMAND='ag -l'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
function _fzf_compgen_path
  ag -l
end

set SPACEFISH_CHAR_SYMBOL ♱
set fish_greeting "♱          Crux Sancta sit mihi lux          ♱"
set SPACEFISH_ELIXIR_SHOW false
set SPACEFISH_DOCKER_SHOW false

source ~/.dotfiles/fish/phasnox.fish

# Add to ssh agent
ssh-add -q ~/.ssh/work ~/.ssh/personal

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/phasnox/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /home/phasnox/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish

nvm use default > /dev/null

set EDITOR /bin/nvim
set VISUAL /bin/nvim
