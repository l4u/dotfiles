set -g theme_color_scheme base16-dark
set -g theme_date_format "+%H:%M"
set -x EDITOR nvim

# alias
abbr c "git add .; git commit -am"
abbr gd "git diff"
abbr gs "git status"
abbr v nvim
abbr vi nvim
abbr vim nvim
abbr g rg

# go
set -x GOPATH ~/Projects/Go/
set -x PATH $GOPATH/bin $PATH

# rust
set -x PATH $HOME/.cargo/bin $PATH

# autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
alias j="cd (cat ~/Library/autojump/autojump.txt | sort -nr | awk '{print \$2}' | fzf +s)"

# fzf
set -x FZF_DEFAULT_COMMAND 'rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
set -x FZF_DEFAULT_OPTS "--height 40% --reverse --border"
set -x FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND

# open mac applications
function o --description 'open mac apps'
  open (fd -eapp -d2 '' /Applications | fzf)
end

