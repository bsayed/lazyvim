return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "storm",
      on_colors = function(colors)
        -- colors.border = "#FF8C00"
        colors.border = "#edf3f1"
      end,
    },
  },
  { "shaunsingh/nord.nvim" },
  { "navarasu/onedark.nvim" },
  {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000,
    -- config = function()
    --   require("bamboo").setup({
    --     -- optional configuration here
    --   })
    --   require("bamboo").load()
    -- end,
  },
  {
    "rmehri01/onenord.nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-storm",
    },
  },
}
