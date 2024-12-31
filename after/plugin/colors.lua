--- require("tokyonight").setup {
---    style = "night",
---    on_highlights = function(hl, colors)
---        hl.LineNr = {
---            fg = "#ffffff",
---            bg = colors.black,
---        }
---        hl.CursorLineNr = {
---            fg = colors.orange,
---        }
---    end,
---    on_colors = function(colors)
---        colors.comment = colors.orange
---    end,
--- }

require("catppuccin").setup({
    flavour = "macchiato",
    default_integrations = true,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
    },
})

vim.cmd.colorscheme "catppuccin"
