# AGENTS.md - Development Guidelines for kickstart.nvim

This file provides guidelines for coding agents working in this Neovim configuration repository.

## Project Overview

This is a personal fork of kickstart.nvim - a starting point for Neovim configuration written in Lua.
It is **not** a distribution, but a single-file (init.lua) configuration with optional modular plugins.

- **Language**: Lua
- **Purpose**: Neovim configuration
- **Base**: Fork of nvim-lua/kickstart.nvim
- **Structure**: Single-file init.lua with optional plugins in lua/kickstart/plugins/ and lua/custom/plugins/

## Build, Lint, and Test Commands

### Formatting (Primary Quality Check)
```bash
# Check Lua formatting with stylua
stylua --check .

# Format all Lua files
stylua .
```

### Testing Neovim Configuration
```bash
# Launch Neovim to test configuration
nvim

# Check plugin status
nvim -c ":Lazy"

# Run health checks
nvim -c ":checkhealth"

# Check LSP status
nvim -c ":LspInfo"

# Check Mason installations
nvim -c ":Mason"
```

### Installation/Setup Commands
```bash
# Install plugins (run from within Neovim)
:Lazy sync

# Install LSP servers and tools
:Mason

# Update plugins
:Lazy update
```

## Code Style Guidelines

### Lua Formatting (.stylua.toml)
- **Column width**: 160
- **Line endings**: Unix (LF)
- **Indent type**: Spaces
- **Indent width**: 2 spaces
- **Quote style**: Auto-prefer single quotes
- **Call parentheses**: None (omit when possible)

### Imports/Requires
```lua
-- Use pcall for optional plugin loading
pcall(require('telescope').load_extension, 'fzf')

-- Standard require for dependencies
local builtin = require('telescope.builtin')

-- Lazy loading in plugin specs
dependencies = { 'nvim-lua/plenary.nvim' }
```

### Naming Conventions
- **Variables**: snake_case
  ```lua
  local file_path = vim.fn.expand('%:p')
  local ensure_installed = { 'stylua' }
  ```
- **Functions**: snake_case
  ```lua
  local function grep_git_changes()
    -- implementation
  end
  ```
- **Constants**: SCREAMING_SNAKE_CASE (rare in this codebase)
- **Plugin specs**: Use descriptive keys matching plugin functionality

### Comments
```lua
-- Single-line comments use double dash
-- Explain WHY, not WHAT (code should be self-documenting)

--[[ Multi-line comments use this style
     for longer explanations or documentation
--]]

-- NOTE: Special markers for important information
-- TODO: For future improvements
-- WARN: For warnings
```

### Function Definitions
```lua
-- Inline anonymous functions for keymaps
vim.keymap.set('n', '<leader>ww', function()
  vim.o.wrap = not vim.o.wrap
end, { noremap = true, silent = true, desc = "Toggle word wrap" })

-- Named functions for reuse
local function client_supports_method(client, method, bufnr)
  if vim.fn.has 'nvim-0.11' == 1 then
    return client:supports_method(method, bufnr)
  else
    return client.supports_method(method, { bufnr = bufnr })
  end
end
```

### Plugin Configuration Structure
```lua
{
  'plugin/name',
  dependencies = { 'required/plugin' },
  event = 'VimEnter',  -- Lazy loading
  opts = {
    -- Simple configuration (auto-calls setup())
  },
  config = function()
    -- Complex configuration
    require('plugin').setup({
      -- options
    })
  end,
  keys = {
    -- Lazy load on keymap
    { '<leader>key', '<cmd>Command<CR>', desc = 'Description' },
  },
}
```

### Keymap Definitions
```lua
-- Always include descriptions for which-key
vim.keymap.set('n', '<leader>key', function()
  -- action
end, { desc = '[K]ey description' })

-- Use bracket notation for grouping in descriptions
-- [S]earch [F]iles means <leader>sf
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
```

### Error Handling
```lua
-- Use pcall for optional operations
pcall(require('telescope').load_extension, 'fzf')

-- Check for executables before using
cond = function()
  return vim.fn.executable('make') == 1
end

-- Provide fallbacks
format_on_save = {
  timeout_ms = 500,
  lsp_fallback = true,  -- Fallback to LSP if formatter fails
}
```

### Type Annotations
```lua
-- Use LSP type annotations for better IntelliSense
---@param client vim.lsp.Client
---@param method vim.lsp.protocol.Method
---@param bufnr? integer some lsp support methods only in specific files
---@return boolean
local function client_supports_method(client, method, bufnr)
  -- implementation
end

-- For configuration options
---@type AutoSession.Config
opts = {
  suppressed_dirs = { '~/', '~/Downloads' },
}
```

## File Organization

### Main Files
- **init.lua**: Single-file configuration (primary file)
- **lua/kickstart/plugins/*.lua**: Optional kickstart plugins
- **lua/custom/plugins/*.lua**: User custom plugins (merge-safe)
- **.stylua.toml**: Lua formatter configuration

### Adding New Plugins
1. Prefer adding to init.lua within the lazy.setup() call
2. For modularity, create files in lua/custom/plugins/
3. Return plugin spec table from module files
4. Do NOT modify lua/kickstart/ files to avoid merge conflicts

## Common Patterns

### Autocommands
```lua
vim.api.nvim_create_autocmd('EventName', {
  desc = 'Description of what this does',
  group = vim.api.nvim_create_augroup('group-name', { clear = true }),
  callback = function()
    -- action
  end,
})
```

### Conditional Configuration
```lua
-- Version-specific code
if vim.fn.has('nvim-0.11') == 1 then
  -- new API
else
  -- old API
end

-- Feature detection
if vim.g.have_nerd_font then
  icons = {}  -- Use Nerd Font icons
else
  icons = { Up = '<Up> ' }  -- Use ASCII
end
```

## Important Notes

1. **Single File Philosophy**: This config prioritizes a single init.lua file for teaching/reference
2. **LSP Setup**: Language servers installed via Mason, configured in servers table
3. **Leader Key**: Space is the leader key (<leader> = space)
4. **Plugin Manager**: Uses lazy.nvim for plugin management
5. **Formatter**: Uses conform.nvim for auto-formatting on save
6. **Git Integration**: Multiple git plugins (lazygit, gitsigns, git-blame, diffview, neogit)
7. **OpenCode Integration**: AI assistant keymaps under <leader>o prefix

## Testing Changes

1. Save the configuration file
2. Restart Neovim or run `:source %`
3. Check for errors with `:checkhealth`
4. Verify plugins loaded with `:Lazy`
5. Test LSP with `:LspInfo`
6. Format with `:!stylua .`

## Commit Guidelines

- Use descriptive commit messages
- Follow existing patterns from git log
- Format code with stylua before committing
- Test configuration in Neovim before committing
