ZSH_THEME="refined"
PS1='%n@%m %~$ '

case `uname` in 
    Linux)
        ## Do Linux things
        brew_home=/home/linuxbrew/.linuxbrew
        if [ -d "${brew_home}" ]; then
            export PATH=${brew_home}/bin:$PATH
        fi

    ;;
    Darwin)
        ## Do macOS things
    ;;
esac

# Make an alias for python
alias -g python="python3"
# Make an alias for neovim
alias -g vim="nvim"
alias -g vi="nvim"
