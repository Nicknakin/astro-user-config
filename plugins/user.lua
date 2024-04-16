return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    'https://gitlab.com/itaranto/plantuml.nvim',
    version = '*',
    lazy = false,
    ft = { "iuml", "plantuml", "pu", "puml", "wsd" },
    config = {
      renderer = {
        type = 'image',
        options = {
          prog = 'feh -R 0.1',
          dark_mode = true,
        }
      },
      render_on_write = true,
    }
  },
  {
    'L3MON4D3/LuaSnip'
  },
  {
    'salkin-mada/openscad.nvim',
    lazy = false,
    ft = { "scad" },
    config = function() 
      require('openscad')
      vim.g.openscad_load_snippets = true
    end,
  },
}
