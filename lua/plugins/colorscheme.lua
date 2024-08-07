return {
	'rebelot/kanagawa.nvim',
	name = 'kanagawa',
	lazy = false,
	priority = 1000,
	config = function()
		require('kanagawa').setup({
      functionStyle = { bold = true },
      keywordStyle = { italic = false },
			overrides = function(colors) local theme = colors.theme
				return {
					Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
					PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
					PmenuSbar = { bg = theme.ui.bg_m1 },
					PmenuThumb = { bg = theme.ui.bg_p2 },

					TelescopeTitle = { fg = theme.ui.special, bold = true },
					TelescopePromptNormal = { bg = theme.ui.bg_p1 },
					TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
					TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
					TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
					TelescopePreviewNormal = { bg = theme.ui.bg_dim },
					TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },

					NormalFloat = { bg = theme.ui.bg_p1 },
					FloatBorder = { bg = theme.ui.bg_p1 },
					FloatTitle = { bg = theme.ui.bg_p1 },
					NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
          StatusLine = { bg = theme.ui.bg_p1 },
          StatusLineNC = { bg = theme.ui.bg_m1, fg = theme.ui.special },

          DiagnosticVirtualTextError = { fg = theme.diag.error, bg = theme.ui.bg_m2 },
          DiagnosticVirtualTextWarn = { fg = theme.diag.warning, bg = theme.ui.bg_m1 },
          DiagnosticVirtualTextInfo = { fg = theme.diag.info, bg = theme.ui.bg_m1 },
          DiagnosticVirtualTextHint = { fg = theme.diag.hint, bg = theme.ui.bg_m1 },

					WhichKeyFloat = { bg = theme.ui.bg_m3 },

					LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
					MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

				}
			end,
		})
		vim.cmd([[colorscheme kanagawa-dragon]])

		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "LineNr", { bg = "#282727",  fg = "#FF9E3B", bold = true })
		vim.api.nvim_set_hl(0, "LineNrAbove", { bg = "#282727", fg = "#625e5a"  })
		vim.api.nvim_set_hl(0, "LineNrBelow", { bg = "#282727", fg = "#625e5a"  })
	end
}
