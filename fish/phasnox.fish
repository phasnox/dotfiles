# Shortcuts

alias swapfix "sudo swapoff -a ; and sudo swapon -a"
alias docker "sudo docker"
alias zypper "sudo zypper"
alias pacman "sudo pacman"
alias apt-get "sudo apt-get"
alias dnf "sudo dnf"
alias yum "sudo yum"
alias nmcli "sudo nmcli"

alias vim "nvim"
alias tmux "env TERM=xterm-256color tmux"
alias tm "env TERM=xterm-256color tmux new-session -c (pwd)"
alias tn "env TERM=xterm-256color tmux new-session"
alias ta "env TERM=xterm-256color tmux attach"
alias gitfixup "git commit --no-verify -a --fixup HEAD ; and git rebase -i --autosquash HEAD~2"
alias bgyekey "python ~/src/python/bgyeKey.py"

# iSeatz stuff
alias iszapi "cd ~/src/iseatz/developer-setup ; and vagrant up api ; and vagrant ssh api"
alias iszamex "cd ~/src/iseatz/developer-setup ; and vagrant up amex ; and vagrant ssh amex"
alias iszihg "cd ~/src/iseatz/developer-setup ; and vagrant up z2 ; and vagrant ssh z2"
alias iszdb "psql -h 54.208.90.157 -U postgres simian_qa"
alias iszmolecularupdate "cd ~/src/iseatz/ams/molecular-components/ ; and yarn build ; and cp -r packages/ams-activities/dist ~/src/iseatz/ams/wyndham_web/node_modules/@iseatz/ams-activities/ ; and cp -r packages/ams-core/dist ~/src/iseatz/ams/wyndham_web/node_modules/@iseatz/ams-core/"
alias yall "yarn install ; and yarn ; and yarn build ; and yarn start"

function git-update-all
    set CURRENT_BRANCH $argv
    test -z $CURRENT_BRANCH; and set CURRENT_BRANCH $WORK_MASTER
    test -z $CURRENT_BRANCH; and set CURRENT_BRANCH master
    for D in *
        if test -d $D
            set_color green
            echo -e "Updating $D..."
            set_color normal
            cd $D; and git fetch --all; and git checkout $CURRENT_BRANCH; and git reset --hard origin/$CURRENT_BRANCH
            prevd
        end
    end
end

function gpush
  git push $argv origin (git rev-parse --abbrev-ref HEAD)
end

function gpull
  git pull $argv origin (git rev-parse --abbrev-ref HEAD)
end

function nvm
  bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

function grebase
  git fetch --all
  git rebase -i $argv
end
