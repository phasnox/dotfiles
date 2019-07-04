# Shortcuts

alias swapfix "sudo swapoff -a && sudo swapon -a"
alias docker "sudo docker"
alias zypper "sudo zypper"
alias pacman "sudo pacman"
alias apt-get "sudo apt-get"
alias dnf "sudo dnf"
alias yum "sudo yum"

alias vim nvim
alias tmux "env TERM=xterm-256color tmux"
alias tm="env TERM=xterm-256color tmux new-session -c (pwd)"
alias tn "env TERM=xterm-256color tmux new-session"
alias ta="env TERM=xterm-256color tmux attach"
alias gitfixup "git commit -a --fixup HEAD && git rebase -i --autosquash HEAD~2"
alias bgyekey "python ~/src/python/bgyeKey.py"

# iSeatz stuff
alias iszapi "cd ~/src/iseatz/developer-setup && vagrant up api && vagrant ssh api"
alias iszamex "cd ~/src/iseatz/developer-setup && vagrant up amex && vagrant ssh amex"
alias iszihg "cd ~/src/iseatz/developer-setup && vagrant up z2 && vagrant ssh z2"
alias iszdb "psql -h 54.208.90.157 -U postgres simian_qa"
alias iszmolecularupdate "cd ~/src/iseatz/ams/molecular-components/ && yarn build && cp -r packages/ams-activities/dist ~/src/iseatz/ams/wyndham_web/node_modules/@iseatz/ams-activities/ && cp -r packages/ams-core/dist ~/src/iseatz/ams/wyndham_web/node_modules/@iseatz/ams-core/"
alias yall "yarn install && yarn && yarn build && yarn start"

function git-update-all
    set CURRENT_BRANCH $argv
    or set CURRENT_BRANCH $WORK_MASTER
    or set CURRENT_BRANCH master
    for D in *
        if test -d $D
            set_color green
            echo -e "Updating $D..."
            set_color normal
            cd $D && git fetch --all && git checkout $CURRENT_BRANCH && git reset --hard origin/$CURRENT_BRANCH
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
