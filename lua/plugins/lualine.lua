vim.pack.add({
	"https://github.com/nvim-lualine/lualine.nvim"
})

require('lualine').setup({
		options = {
			-- DISABLES LUALINE IN NVIM-TREE
			disabled_filetypes = { "NvimTree" },
		},
		extensions = { "nvim-tree" },
})

