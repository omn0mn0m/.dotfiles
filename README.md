# .dotfiles
All my dotfiles in one place.

## Installation

Prior to cloning the repository, run the following command to set up an alias.

```bash
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
source ~/.bashrc
```

Then clone the repository as bare.

`git clone --bare git@github.com:omn0mn0m/.dotfiles.git $HOME/.dotfiles`

Go to your home directory if you aren't already there. Then back up all your old config files that would be overwritten.

```bash
mkdir -p .dotfiles-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```

Checkout the contents of the repository.

`config checkout`

Set .dotfiles to not show untracked files (since there would be too many).

`config config --local status.showUntrackedFiles no`

## Making Your Own

First set up the bare repository.

```bash
git init --bare ~/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config status.showUntrackedFiles no
```

Then add some times and push to GitHub (or other Git host).

[Source Instructions](https://wiki.archlinux.org/index.php/Dotfiles#Tracking_dotfiles_directly_with_Git)
