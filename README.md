# Vim + Go Development Setup

This guide explains how to set up Vim for Go development using `vim-go` and a few essential UI enhancements.

---

## 1. Prerequisites

Make sure you have:

- **Vim** (version 8+ recommended)
- **Go** installed (`go version` to verify)
- **curl** (for installing vim-plug)
- **node.js** (Install it from https://nodejs.org/en/download/)

---

## 2. Install vim-plug (Plugin Manager)

Run:


```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## 3. Copy the file vimrc to ..

Copy the file vimrc to ~/.vimrc on your linux machine or /etc/vimrc

## 4. Install plugins

Open vim and run `:PlugInstall` then wait for it to finish

## 5. Install Go Tools

Open vim and run `:GoInstallBinaries` then wait for it to finish

This will install tools like:

- gopls (Go language server)
- goimports (formatting & imports)
- guru, gorename, godef and other helpful utilities

## Plugins Installed

| Plugin        | Usage                                                                       |
| ------------- | --------------------------------------------------------------------------- |
| `vim-go`      | Build, run, test, format, go-to-definition inside Vim                       |
| `coc.nvim`    | Autocomplete, diagnostics, LSP support                                      |
| `NERDTree`    | `,e` to toggle file tree                                                    |
| `vim-airline` | Shows status bar with branch, file info, etc.                               |
| `fzf`         | `Ctrl+P` for fuzzy file search, `,f` to search text, `,b` to switch buffers |


# Tmux Prerequisites

The tmux.conf configuration relies on a few external tools and settings.
Please make sure you have all prerequisites installed, otherwise the status bar and plugins may not work correctly.

1. tmux (recent version)

Check your tmux version:

```
tmux -V
```

Recommended:

tmux ≥ 3.2

If needed, install or upgrade tmux using your system package manager.

2. Tmux Plugin Manager (TPM)

TPM is used to install and manage tmux plugins.

Install TPM
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Verify installation

```
ls ~/.tmux/plugins/tpm
```

You should see files like tpm, bindings, and scripts.

Install plugins

Inside tmux, press:

**Ctrl + b  then  I**


TPM will download and install all configured plugins.

3.  Nerd Font (required for status bar icons)

This configuration uses Nerd Font glyphs (icons and separators).
Without a Nerd Font, the tmux status bar may appear broken, misaligned, or show empty boxes.

Recommended fonts that are needed for the tmux bar:

- JetBrainsMono Nerd Font (recommended)
- FiraCode Nerd Font
- Hack Nerd Font
- MesloLGS Nerd Font

Install a Nerd Font

Download from:

https://www.nerdfonts.com/font-downloads

Configure your terminal

Set your terminal to use the Nerd Font you installed
(e.g. JetBrainsMono Nerd Font).

5. Restart tmux after setup

After installing fonts or plugins:

```
tmux kill-server
tmux
```

