local logo = [[
  ███╗   ███╗███████╗██╗    ██╗   ██╗██╗██╗     ██╗     ██╗
  ████╗ ████║██╔════╝██║    ██║   ██║██║██║     ██║     ██║
  ██╔████╔██║█████╗  ██║    ██║   ██║██║██║     ██║     ██║
  ██║╚██╔╝██║██╔══╝  ██║    ╚██╗ ██╔╝██║██║     ██║     ██║
  ██║ ╚═╝ ██║███████╗███████╗╚████╔╝ ██║███████╗███████╗██║
  ╚═╝     ╚═╝╚══════╝╚══════╝ ╚═══╝  ╚═╝╚══════╝╚══════╝╚═╝

]]

return {
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({
				theme = "doom",
				shortcut_type = "letter",
				config = {
          header = vim.split(string.rep("\n", 8) .. logo, "\n"),
					center = {
						{ action = "ene | startinsert", desc = " New File              ", icon = " ", key = "n" },
						{ action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
						{ action = "Telescope find_files", desc = " Find", icon = " ", key = "f" },
						{ action = "Telescope oldfiles", desc = " Recent", icon = " ", key = "r" },
						{
							action = function()
								vim.api.nvim_input("<cmd>qa<cr>")
							end,
							desc = " Quit",
							icon = " ",
							key = "q",
						},
					},
				},
			})
		end,
	},
}
