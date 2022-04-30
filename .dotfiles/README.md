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
