# Vim + Go Development Setup

This guide explains how to set up Vim for Go development using `vim-go` and a few essential UI enhancements.

---

## 1. Prerequisites

Make sure you have:

- **Vim** (version 8+ recommended)
- **Go** installed (`go version` to verify)
- **curl** (for installing vim-plug)

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

