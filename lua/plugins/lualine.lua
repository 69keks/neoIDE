local lazy_status = require("lazy.status")

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
			},
			sections = {
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#fe8019" },
					},
					{ "fileformat" },
					{ "filetype" },
				},
			},
		})
	end,
}
