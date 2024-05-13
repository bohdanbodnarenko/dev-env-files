return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			view = {
				width = 35,
				relativenumber = true,
			},
			-- change folder arrow icons
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "", -- Arrow when folder is closed
							arrow_open = "", -- Arrow when folder is open
						},
					},
				},
			},
			-- Disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
		keymap.set(
			"n",
			"<leader>ef",
			"<cmd>NvimTreeFindFileToggle<CR>",
			{ desc = "Toggle file explorer on current file" }
		) -- toggle file explorer on current file
		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer

		-- Custom function for focus and unfocus file tree
		local function toggle_nvim_tree_focus()
			-- Find the NvimTree buffer
			local nvim_tree_buf = nil
			for _, buf in pairs(vim.api.nvim_list_bufs()) do
				if vim.bo[buf].filetype == "NvimTree" then
					nvim_tree_buf = buf
					break
				end
			end

			-- Find the window that has the NvimTree buffer, if any
			local nvim_tree_win = nil
			for _, win in pairs(vim.api.nvim_list_wins()) do
				if vim.api.nvim_win_get_buf(win) == nvim_tree_buf then
					nvim_tree_win = win
					break
				end
			end

			-- If NvimTree is focused, go back to the previous window, otherwise focus NvimTree
			if nvim_tree_win and vim.api.nvim_get_current_win() == nvim_tree_win then
				vim.cmd("wincmd p")
			elseif nvim_tree_win then
				vim.api.nvim_set_current_win(nvim_tree_win)
			end
		end

		-- Assign the function to a keymap
		keymap.set("n", "<leader>es", toggle_nvim_tree_focus, { desc = "Toggle focus on NvimTree" })

		--[[ 		keymap.set(
			"n",
			"<leader>es",
			"<cmd>NvimTreeToggle<CR><cmd>wincmd p<CR>",
			{ desc = "Open the tree if it is closed, and then focus on the tree" }
		) ]]
	end,
}
