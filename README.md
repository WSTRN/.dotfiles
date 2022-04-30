# .dotfiles
my dotfile configurations

## Quick Start

```bash
git init --bare ~/.dotfiles
```

```bash
alias gitdotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 
```

```bash
gitdotfiles status.showUntrackedFiles no
```

## Example

```bash
gitdotfiles add .bashrc
```

```bash
gitdotfiles status
```
