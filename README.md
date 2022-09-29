# dotfiles

```bash
git clone --bare git@github.com:anajuliabit/dotfiles.git .dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```

## Configurations

- [Tmux](.tmux.conf)
- [Lunar Vim](./.config/lvim)
- [ZSH](.zshrc) 
