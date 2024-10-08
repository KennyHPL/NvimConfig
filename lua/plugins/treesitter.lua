return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local ts_config = require("nvim-treesitter.configs")
        ts_config.setup({
            ensure_installed = {"lua", "go", "c", "rust", "html", "javascript", "typescript"},
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        })
    end
}
