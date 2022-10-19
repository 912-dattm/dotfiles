if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path /opt/homebrew/bin

set fish_greeting
set -g FZF_DEFAULT_COMMAND "rg --files --hidden -uu --no-require-git -g '!{.DS_Store,.git,.next,node_modules}'"
set -g FZF_CTRL_T_COMMAND "rg --files --hidden -uu --no-require-git -g '!{.DS_Store,.git,.next,node_modules}'"
set -g FZF_DEFAULT_OPTS "--preview-window 'right:60%' "
set -U FZF_FIND_FILE_OPTS ""

set fish_color_error ebdbb2
set fish_color_operator ebdbb2
set fish_color_autosuggestion f2f2f2 -d
set fish_color_command ffca85 -b
set fish_color_param edecee
#set fish_color_command 50fa7b -b
#set fish_color_param ebdbb2

function fish_title
    set -q argv[1]; or set argv fish
    # Looks like ~/d/fish: git log
    # or /e/apt: fish
    echo (fish_prompt_pwd_dir_length=1 prompt_pwd): $argv;
end

alias v="nvim"
alias nvimconfig="cd ~/.config/nvim && v"
alias fishconfig="cd ~/.config/fish && v"
alias kittyconfig="cd ~/.config/kitty && v"
alias trashdir="cd ~/.local/share/Trash && v"
alias trash-empty="rm ~/.local/share/Trash/files/* && rm ~/.local/share/Trash/info/*"

set PATH /Users/dattm/.nvm/versions/node/v14.17.0/bin $PATH
set PATH /Users/dattm/Library/Python/3.8/bin $PATH
set PATH /Users/dattm/Library/Python/2.7/bin $PATH
set PATH /opt/homebrew/opt/rabbitmq/sbin $PATH

set -gx  LC_ALL en_US.UTF-8  

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dattm/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/dattm/Downloads/google-cloud-sdk/path.fish.inc'; end
