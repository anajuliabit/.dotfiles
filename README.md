# dotfiles

```bash
git clone --bare git@github.com:anajuliabit/dotfiles.git .dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```

## Configurations

- [Tmux](./config/tmux/tmux.conf)
- [NeoVim](./.config/nvim)
- [ZSH](.zshrc)
- [Yabai](./config/yabai/yabairc)
- [Skhd](./config/skhd/skhdrc)
