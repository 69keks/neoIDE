return {
	{
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox",
		lazy = true,
		priority = 1000,
		opts = {
			terminal_colors = true,
			contrast = "hard",
			italic = {
				strings = false,
				emphasis = false,
				comments = false,
				operators = false,
				folds = false,
			},
		},
	},
}
