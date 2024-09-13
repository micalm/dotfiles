# Dotfiles

Welcome to my personal repository of commonly used \*nix environment configuration files. These files are provided without any warranty but with the hope that they'll be useful to you.

Feel free to share and modify them. If you base your work on these files, a mention would be highly appreciated.

## Requirements

- **Binaries**
  - `fzf` - [command-line fuzzy finder](https://github.com/junegunn/fzf) (via `apt`)
  - `rg` - [ripgrep](https://github.com/BurntSushi/ripgrep) (via `apt`)
  - `bat` - [A cat(1) clone with syntax highlighting](https://github.com/sharkdp/bat) (via `apt`)
  - `eza` - [A modern replacement for ls](https://github.com/eza-community/eza) (via `apt`)
    - Note `exa` was used before, but it has since [been abandoned](https://github.com/ogham/exa/blob/master/README.md)
  - `broot` - [A better way to navigate directories](https://github.com/Canop/broot) (manual)
    - Requires initial install before first use - just launch `broot`

## Installation

- clone the repo to your desired directory (`$HOME/dotfiles` by default)
- make sure you know what the installer does
- launch the installer `./.local/bin/update-dotfiles`
- done!

## Contents

### .zshrc

A set of helpers for ohmyz.sh-based zsh configurations. Some web development helpers are included:

- **Theme**: [bureau](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#bureau) - supports git and nvm.
- **Aliases**:
  - `cat` aliased to [bat](https://github.com/sharkdp/bat)
  - `l(s)` aliased to [exa](https://github.com/eza-community/eza)
  - `host` wrapper for quick domain-to-IP and reverse DNS lookups
  - `flush-dns` alias for systemd
  - `vim` set as the default editor

### .vimrc

Enhances your VIM configuration to be more useful than the default setup. Key features include:

- Use UTF-8 encoding
- Display line numbers, cursor position, and syntax highlighting
- Automatically reload files on external modification
- Enable sudo-save with `:W`
- Improved search functionality: case-insensitive search and highlighted results
- Highlight matching brackets and auto-close brackets and parentheses
- Disable auto-backup clutter
- Indent with spaces (4 spaces by default)
- Smart auto-indentation

### .screenrc

A basic setup to maintain user sanity:

- Disabled welcome message
- Disabled visual bell
- Enabled scrollback buffer
- A simple status line

### .git*

- Default commit message with hints on [Conventional Commits](https://www.conventionalcommits.org/)
- `git plog` alias for a formatted `git log`
- A sane default configuration (Remember to change the user settings if using this!)

### hhost

A simple wrapper on `host` for quick `domain => ip => revdns` lookups.
```
$ host google.com
google.com => 142.250.203.206 => waw02s22-in-f14.1e100.net
```

## Unlicense

This is free and unencumbered software released into the public domain under terms set by The Unlicense. For more details, see the [UNLICENSE](UNLICENSE) file.