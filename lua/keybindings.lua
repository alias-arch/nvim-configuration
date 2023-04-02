vim.g.mapleader = " "
local options = { noremap = true, silent = true }

local nkeymap = function(key, func)
  -- keymap(mode, keymap, mapped to, options)
  vim.api.nvim_set_keymap('n', key, func, options)
end

-- nvim-tree
--
nkeymap('<leader>t', '<cmd>NvimTreeToggle<CR>')

-- telescope
--
nkeymap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nkeymap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nkeymap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nkeymap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
nkeymap("<leader>fm", "<cmd>lua require('telescope.builtin').man_pages()<cr>")

