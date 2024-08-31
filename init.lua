require("config.lazy")

-- Telescope button remaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

-- Tree sitter config
local ts_config = require("nvim-treesitter.configs")
ts_config.setup({
    ensure_installed = {"lua", "go", "c", "rust", "html", "javascript", "typescript"},
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },  
})

-- Lualine config
require('lualine').setup{
    options = {
        theme = "dracula"
    }
}

-- VIM Settings

vim.keymap.set("n", "<leader>nn", ":Neotree filesystem reveal left<CR>")
vim.keymap.set("n", "<leader>nc", ":Neotree close<CR>")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set nu")
vim.cmd("set ai")
