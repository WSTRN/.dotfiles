# .dotfiles
my dotfile configurations

## Quick Start

```bash
git init --bare ~/.dotfiles
```

```bash
alias gitdotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias lazygitdotfiles='lazygit --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

```bash
gitdotfiles remote add origin git@github.com:WSTRN/.dotfiles.git
```

```bash
gitdotfiles pull origin master
```

```bash
gitdotfiles config status.showUntrackedFiles no
```

## Example

```bash
gitdotfiles add .bashrc
```

```bash
gitdotfiles status
```
