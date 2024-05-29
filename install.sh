#!/bin/sh

# VARIABLES

REPO_PATH="/mnt/c/users/robertas/repos"

# Install applications
sudo apt install build-essential

# install homebrew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# for Windows:
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/user/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# install necessities
brew install zsh
brew install neovim
brew install ripgrep
brew install tmux
brew install dos2unix

ln -sf $REPO_PATH ~/repos

# TODO: platform switches


# INSTALL ZSH
zsh --version

# for macOS/linux:
# chsh -s /bin/zsh

# for WSL:
command -v zsh | sudo tee -a /etc/shells
sudo chsh -s "$(command -v zsh)" "${USER}"

# DOTFILES
# TODO: get all files with a .dot extension and make symbolic links
#    for all of those inside the ~ folder

ln -sf $REPO_PATH/.dotfiles/nvim ~/.config/nvim
ln -sf $REPO_PATH/.dotfiles/.ideavimrc ~/.ideavimrc
ln -sf $REPO_PATH/.dotfiles/.tmux.conf ~/.tmux.conf
ln -sf $REPO_PATH/.dotfiles/.zshrc ~/.zshrc

# For Windows:
find $REPO_PATH/.dotfiles -type f -exec dos2unix {} \;

echo "Setting up aliases:"
./aliases.sh
