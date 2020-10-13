## Git
Create new SSH key

```
$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

Copy SSH key

```
$ pbcopy < ~/.ssh/id_rsa.pub
```

ADd key to account: https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account

Clone dot files

```
$ git clone git@github.com:jackharvey1/.dot.git
```

Execute installation 

```
$ ./install.sh
```

Install bullet-train zsh theme 
https://github.com/caiogondim/bullet-train.zsh

install powerline font
https://github.com/powerline/fonts

change terminal font to `Fira Mono`

execute `git submodule update --init --recursive` in `.dot to pull submodules
