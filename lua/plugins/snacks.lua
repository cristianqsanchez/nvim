return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,

  ---@type snacks.Config
  opts = {
    picker = { enabled = true },
    notifier = { enabled = true, style = 'fancy' },
  },
  keys = {
    {
      '<leader>i',
      function()
        local indent = require('snacks').indent
        local bufnr = vim.api.nvim_get_current_buf()
        local is_enabled = vim.b[bufnr].snacks_indent_enabled

        if is_enabled then
          indent.disable()
          vim.b[bufnr].snacks_indent_enabled = false
        else
          indent.enable()
          vim.b[bufnr].snacks_indent_enabled = true
        end
      end,
    },
    {
      '<leader><space>',
      function()
        Snacks.picker()
      end,
      desc = 'Picker',
    },
    {
      '<leader>pf',
      function()
        Snacks.picker.files()
      end,
      desc = 'Find files',
    },
    {
      '<c-p>',
      function()
        Snacks.picker.git_files()
      end,
      desc = 'Find Git Files',
    },
    {
      '<leader>ps',
      function()
        Snacks.picker.grep()
      end,
      desc = 'Grep',
    },
    {
      'gd',
      function()
        Snacks.picker.lsp_definitions()
      end,
      desc = 'Goto Definition',
    },
    {
      'gD',
      function()
        Snacks.picker.lsp_declarations()
      end,
      desc = 'Goto Declaration',
    },
    {
      'gr',
      function()
        Snacks.picker.lsp_references()
      end,
      nowait = true,
      desc = 'References',
    },
    {
      'gI',
      function()
        Snacks.picker.lsp_implementations()
      end,
      desc = 'Goto Implementation',
    },
    {
      'gy',
      function()
        Snacks.picker.lsp_type_definitions()
      end,
      desc = 'Goto T[y]pe Definition',
    },
    {
      '<leader>ss',
      function()
        Snacks.picker.lsp_symbols()
      end,
      desc = 'LSP Symbols',
    },
    {
      '<leader>sS',
      function()
        Snacks.picker.lsp_workspace_symbols()
      end,
      desc = 'LSP Workspace Symbols',
    },
    {
      '<leader>gb',
      function()
        Snacks.git.blame_line()
      end,
      desc = 'Git Blame',
    },
  },
}
