return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy', -- Load this plugin on the 'VeryLazy' event
  opts = {
    options = {
      theme = 'oldworld', -- Set the theme for lualine
      icons_enabled = true, -- Enable icons in the statusline
    },
    sections = {
      lualine_a = {
        {
          'mode', -- Display the current mode
          icon = '󰣇', -- Set the icon for the mode
        },
      },
    },
  },
  dependencies = {
    'echasnovski/mini.icons',
  },
  config = function()
    require('mini.icons').setup()

    require('mini.icons').mock_nvim_web_devicons()

    require('lualine').setup {}
  end,
}
