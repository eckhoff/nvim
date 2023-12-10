require("tokyonight").setup {
    style = "storm",
    on_highlights = function(hl, colors)
        hl.LineNr = {
            fg = "#ffffff",
            bg = colors.black,
        }
        hl.CursorLineNr = {
            fg = colors.orange,
        }
    end,
    on_colors = function(colors)
        colors.comment = colors.orange
    end,
}

vim.cmd[[colorscheme tokyonight]]
