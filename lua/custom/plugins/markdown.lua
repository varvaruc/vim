local have_nerd_font = vim.g.have_nerd_font

return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
    ft = { 'markdown' },
    keys = {
      { '<leader>tm', '<cmd>RenderMarkdown toggle<CR>', desc = '[T]oggle [M]arkdown render' },
    },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = have_nerd_font and {} or {
      heading = {
        icons = { '# ', '## ', '### ', '#### ', '##### ', '###### ' },
      },
      checkbox = {
        unchecked = { icon = '[ ] ' },
        checked = { icon = '[x] ' },
      },
    },
  },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
    keys = {
      { '<leader>tp', '<cmd>MarkdownPreviewToggle<CR>', ft = 'markdown', desc = '[T]oggle markdown [P]review in browser' },
    },
  },
}
