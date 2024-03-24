# Intro

Installation guide for a fresh reset of desktop. Including windows essential services

# Windows

* Install Drive to synchronize kee database
* Signal/Whatsapp/Telegram
* Install fonts for Terminal (glyphs and ligatures) > FiraMono Nerd Font Mono


* Install WSL2
* * Set fonts (Ubuntu/Appearance/Font Face/FiraMono Nerd Font Mono)
* * Disable warning sounds in terminal (Ubuntu/Advanced/Bell notification style/Flash taskbar)

# Ubuntu 

* Build Neovim from source
    mkdir locally_built
    git clone https://github.com/neovim/neovim.git
    sudo apt-get install ninja-build gettext cmake unzip curl build-essential
    cd locally_built/neovim
    git checkout stable
    cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo

* Install Node.js
    -> follow these instructions: https://deb.nodesource.com/

* Get new ssh-keys
    ssh-keygen
* Copy the public key in: Github, Azure DevOps

* Install yadm with
    sudo apt install yadm
  
* Clone this repository
    yadm clone git@github.com:panchoop/dotfiles.git
    git checkout home/panchoop
  
* Correct nvim Lazy repository
  cd ~/.local/share/nvim/lazy/coc.nvim
  npm install

* Allow python in neovim
  sudo apt install python3-pip
  pip install neovim
