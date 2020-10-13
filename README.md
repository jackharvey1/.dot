# .dot

## Prerequisites

* homebrew

```sh
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

* git

```sh
$ brew install git
```

* oh-my-zsh

```sh
$ brew install oh-my-zsh
```

* z
```sh
$ brew install z
```

* nvm
```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
```

* nvim
```sh
$ brew install nvim
$ mkdir ~/.config/nvim
$ echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc" > ~/.config/nvim/init.vim
```

## Clone repository
Create new SSH key

```sh
$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

Copy SSH key

```sh
$ pbcopy < ~/.ssh/id_rsa.pub
```

Keep key loaded between sessions

```Sh
$ vim ~/.ssh/config
```

Enter the following:
```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
```

Add to ssh-agent
```sh
ssh-add -K ~/.ssh/id_rsa
```

Add key to account: https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account

Clone dot files

```sh
$ git clone git@github.com:jackharvey1/.dot.git
```

Execute installation 

```sh
$ ./install.sh
```

## Theme

Install bullet-train zsh theme 
https://github.com/caiogondim/bullet-train.zsh

Install powerline font
https://github.com/powerline/fonts

Change terminal font to `Fira Mono`

## Submodules

Execute `git submodule update --init --recursive` in to pull submodules

## Aerial.saver

Install Aerial.saver

https://aerialscreensaver.github.io/
