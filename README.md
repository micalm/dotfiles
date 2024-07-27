# Dotfiles

Welcome to my personal repository of commonly used \*nix environment configuration files. These files are provided without any warranty but with the hope that they'll be useful to you.

Feel free to share and modify them. If you base your work on these files, a mention would be highly appreciated.

## Contents

### .zshrc

A set of helpers for ohmyz.sh-based zsh configurations. Some web development helpers are included:

- **Theme**: [bureau](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#bureau) - supports git and nvm.
- **Aliases**:
  - `cat` aliased to [bat](https://github.com/sharkdp/bat)
  - `l(s)` aliased to [exa](https://github.com/ogham/exa)
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

## Unlicense

This is free and unencumbered software released into the public domain under terms set by The Unlicense. For more details, see the [UNLICENSE](UNLICENSE) file.