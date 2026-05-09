local neotree = require("neo-tree")

neotree.setup({
  filesystem = {
	window = {
		position = "right",
	},
    filtered_items = {
      visible = true,
    },
  },
})

-- keymaps
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")
vim.keymap.set("n", "<leader>o", ":Neotree focus<CR>")
