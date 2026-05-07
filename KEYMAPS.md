# Keymaps Summary

Leader key: `Space`

## General

| Key | Mode | Description |
|-----|------|-------------|
| `Esc` | n | Clear search highlights |
| `jj` | i | Escape to normal mode |
| `<C-h>` | n | Move focus to left window |
| `<C-j>` | n | Move focus to lower window |
| `<C-k>` | n | Move focus to upper window |
| `<C-l>` | n | Move focus to right window |
| `<C-d>` | n | Scroll down half page + center |
| `<C-u>` | n | Scroll up half page + center |
| `n` | n | Next search match + center |
| `N` | n | Previous search match + center |
| `<Up>` | n | Next tab |
| `<Down>` | n | Previous tab |
| `<Right>` | n | Next buffer |
| `<Left>` | n | Previous buffer |

## Buffer & Window

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>-` | n | Open Oil file explorer |
| `<leader>xx` | n | Close buffer |
| `<leader>xa` | n | Close all buffers |
| `<leader>]` | n | Next buffer (BufferLine) |
| `<leader>[` | n | Previous buffer (BufferLine) |
| `<leader>ww` | n | Toggle word wrap |
| `<leader>tt` | n | Open scratch buffer |

## Clipboard & Paste

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>cf` | n | Copy file path to clipboard |
| `<leader>p` | x | Paste without overwriting register |

## Git

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>gb` | n | Toggle git blame |
| `<leader>gs` | n | Git status (Telescope) |
| `<leader>gg` | n | Grep in git changed files |
| `<leader>lg` | n | LazyGit |
| `<leader>ng` | n | Neogit |
| `<leader>do` | n | Diffview open |
| `<leader>dc` | n | Diffview close |
| `]c` | n | Next git hunk |
| `[c` | n | Previous git hunk |

## Gitsigns (plugin not enabled by default)

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>hs` | n/v | Stage hunk |
| `<leader>hr` | n/v | Reset hunk |
| `<leader>hS` | n | Stage buffer |
| `<leader>hu` | n | Undo stage hunk |
| `<leader>hR` | n | Reset buffer |
| `<leader>hp` | n | Preview hunk |
| `<leader>hb` | n | Blame line |
| `<leader>hd` | n | Diff against index |
| `<leader>hD` | n | Diff against last commit |
| `<leader>tb` | n | Toggle git blame line |
| `<leader>tD` | n | Toggle show deleted |

## Quickfix & Diagnostics

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>q` | n | Open diagnostic quickfix list |
| `<leader>cn` | n | Next quickfix item |
| `<leader>cp` | n | Previous quickfix item |
| `<leader>0` | n | Next quickfix item |
| `<leader>9` | n | Previous quickfix item |

## Telescope (Search)

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>sh` | n | Search help |
| `<leader>sk` | n | Search keymaps |
| `<leader>sf` | n | Search files |
| `<leader>ss` | n | Select Telescope picker |
| `<leader>sw` | n | Search current word |
| `<leader>sg` | n | Search by grep (fixed strings) |
| `<leader>sd` | n | Search diagnostics |
| `<leader>sr` | n | Resume last search |
| `<leader>s.` | n | Search recent files |
| `<leader><leader>` | n | Find existing buffers |
| `<leader>re` | n | Search registers |
| `<leader>si` | n | Search with grep args |
| `<leader>/` | n | Fuzzy search in current buffer |
| `<leader>s/` | n | Search in open files |
| `<leader>sn` | n | Search Neovim config files |

## LSP

| Key | Mode | Description |
|-----|------|-------------|
| `gd` | n | Go to definition |
| `gr` | n | Go to references |
| `gI` | n | Go to implementation |
| `gD` | n | Go to declaration |
| `<leader>D` | n | Type definition |
| `<leader>ds` | n | Document symbols |
| `<leader>ws` | n | Workspace symbols |
| `<leader>rn` | n | Rename |
| `<leader>ca` | n/x | Code action |
| `<leader>th` | n | Toggle inlay hints |

## Harpoon

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>A` | n | Harpoon add file |
| `<leader>a` | n | Harpoon quick menu |
| `<leader>1` | n | Harpoon to file 1 |
| `<leader>2` | n | Harpoon to file 2 |
| `<leader>3` | n | Harpoon to file 3 |
| `<leader>4` | n | Harpoon to file 4 |
| `<leader>5` | n | Harpoon to file 5 |

## OpenCode

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>oa` | n/x | Ask with context |
| `<leader>ox` | n/x | Execute action |
| `<leader>ot` | n/t | Toggle terminal |
| `<leader>op` | n/x | Prompt library |
| `go` | n/x | Add range to OpenCode |
| `goo` | n | Add line to OpenCode |
| `<leader>ou` | n | Scroll up |
| `<leader>od` | n | Scroll down |
| `<leader>on` | n | New session |
| `<leader>os` | n | Share session |
| `<leader>oi` | n | Interrupt |

## Copilot Chat

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>zc` | n | Chat with Copilot |
| `<leader>ze` | v | Explain code |
| `<leader>zr` | v | Review code |
| `<leader>zf` | v | Fix code issues |
| `<leader>zo` | v | Optimize code |
| `<leader>zd` | v | Generate docs |
| `<leader>zt` | v | Generate tests |
| `<leader>zm` | n | Generate commit message |
| `<leader>zs` | v | Generate commit for selection |

## Auto-Session

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>wr` | n | Session search |
| `<leader>wd` | n | Save session |
| `<leader>wa` | n | Toggle autosave |

## Other Plugins

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>f` | n/v | Format buffer/file |
| `<leader>u` | n | Toggle undotree |
| `<leader>m` | n | Open monolithic.nvim |
| `<C-\>` | n | Toggle terminal (toggleterm) |

## Insert Mode Completion

| Key | Mode | Description |
|-----|------|-------------|
| `<C-n>` | i | Next completion item |
| `<C-p>` | i | Previous completion item |
| `<C-b>` | i | Scroll docs back |
| `<C-f>` | i | Scroll docs forward |
| `<C-y>` | i | Confirm completion |
| `<C-Space>` | i | Trigger completion |
| `<C-l>` | i | Snippet jump forward |
| `<C-h>` | i | Snippet jump backward |

## Which-Key Groups

| Prefix | Description |
|--------|-------------|
| `<leader>c` | Code |
| `<leader>d` | Document |
| `<leader>r` | Rename |
| `<leader>s` | Search |
| `<leader>w` | Workspace |
| `<leader>t` | Toggle |
| `<leader>h` | Git Hunk |
| `<leader>o` | OpenCode |