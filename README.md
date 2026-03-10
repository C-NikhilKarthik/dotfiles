# dotfiles

My personal configuration files for development and terminal setup.

## Included so far

- **Kitty** terminal configs
  - `.config/kitty/barcelona.conf`
  - `.config/kitty/kitty.conf`
- **Tmux** config
  - `.config/tmux/tmux.conf`
- **Starship** prompt
  - `.config/starship.toml`
- **.gitignore** for ignoring local caches, backups, etc.

## Usage

Clone the repository as a **bare repo**:

```bash
git clone --bare git@github.com:C-NikhilKarthik/dotfiles.git $HOME/.dotfiles
````

Set up the `dotfiles` alias:

```bash
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
```

Checkout your configs:

```bash
dotfiles checkout
```

Hide untracked files:

```bash
dotfiles config --local status.showUntrackedFiles no
```

Your terminal and Tmux configurations are now ready.
