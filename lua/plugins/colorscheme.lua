return {
  -- add Catppuccin theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- load early
    opts = {
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
      transparent_background = true, -- transparent background
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
        which_key = true,
        bufferline = true,
        notify = true,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
    end,
  },

  -- set Catppuccin as default after all plugins load
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  -- optional: make lualine match Catppuccin with transparent sections
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.options = opts.options or {}
      opts.options.theme = "catppuccin"
      opts.options.component_separators = ""
      opts.options.section_separators = ""
      opts.options.globalstatus = true
    end,
  },
}
