local lisp_file_types = {
  "clojure",
  "clojurescript",
  "edn",
  "fennel",
  "janet",
  "lisp",
  "hy",
}

return {

  -- Install plugin
  ["Pocco81/TrueZen.nvim"] = {},

  -- Override plugin definition options
  ["goolord/alpha-nvim"] = {
    disable = false,
    cmd = "Alpha",
  },


  -- LSP stuff
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
  },

  -- TS needs certain c++ libraries present
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      ensure_installed = {
        "lua",
        "clojure",
        "php",
        "dockerfile",
        "yaml",
        "bash",
        "typescript",
        "javascript",
        "html",
        "css",
        "python",
      },
    },
  },

  -- These will require npm, and go
  ["williamboman/mason.nvim"] = {
     override_options = {
        ensure_installed = {
          -- lua stuff
          "lua-language-server",
          "stylua",

          -- web dev
          "css-lsp",
          "html-lsp",
          "typescript-language-server",
          "deno",
          "emmet-ls",
          "json-lsp",
          "yaml-language-server",
          "intelephense",
          "nginx-language-server",
          "sqls",
          "sql-formatter",
          "dockerfile-language-server",
          "eslint_d",
          "prettierd",

          -- shell
          "shfmt",
          "shellcheck",

          --lisps
          "clojure-lsp",
        },
      },
    },


  -- Lisp stuff
  ["Olical/conjure"] = {
    ft = lisp_file_types,
  },

  ["gpanders/nvim-parinfer"] = {
    ft = lisp_file_types,
  },

  ["clojure-vim/vim-jack-in"] = {
    ft = {"clojure"},
---    requires = {"radenling/vim-dispatch-neovim"},
  },
  ["radenling/vim-dispatch-neovim"] = {},
  ["tpope/vim-dispatch"] = {},


  -- Motion plugins
  ["ggandor/leap.nvim"] = {
    config = function()
      require('leap').add_default_mappings()
    end,
  },

  ["tpope/vim-repeat"] = {},

}
