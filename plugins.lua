local lisp_file_types = {
	"clojure",
	"clojurescript",
	"edn",
	"fennel",
	"janet",
	"lisp",
	"hy",
}

local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  -- TS needs certain c++ libraries present

	{"nvim-treesitter/playground"},

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- Install plugin
  {"Pocco81/TrueZen.nvim"},

  -- Override plugin definition options
  {
    "folke/which-key.nvim",
    enabled = true,
  },

  {
    "ojroques/vim-oscyank",
    branch = "main",
  },

  -- LSP stuff
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require("plugins.configs.lspconfig")
  --     require("custom.configs.lspconfig")
  --   end,
  -- },

  -- {
  --   "jose-elias-alvarez/null-ls.nvim",
  --   after = "nvim-lspconfig",
  --   config = function()
  --     require("custom.configs.null-ls")
  --   end,
  -- },

	-- These will require npm, and go
	{
    "williamboman/mason.nvim",
		opts = overrides.mason,
	},

  -- Git stuff

	{
    "TimUntersberger/neogit",
    dependencies = {
      {"nvim-lua/plenary.nvim"},
      {"sindrets/diffview.nvim"}
    },
    event = "BufReadPre",
    config = function()
      require("neogit").setup {
        kind = "vsplit", -- default = "tab"
        -- ^ one of {
        --   "tab", 
        --   "split", 
        --   "vsplit", 
        --   "replace", 
        --   "split_above"
        -- },
        diffview = true,
      }
    end
  },

	{
    "lewis6991/gitsigns.nvim",
    event = "VimEnter",
		-- Use <leader>gb to get the blame line on-demand
		-- opts = {
		--   current_line_blame = true,
		-- },
	},

	{
    "tpope/vim-fugitive",
    event = "VimEnter",
	},

  {
    "sindrets/diffview.nvim",
    event = "VimEnter",
    dependencies = {"nvim-lua/plenary.nvim"}
  },

	-- Lisp stuff
	{
    "Olical/conjure",
		ft = lisp_file_types,
	},

	{
    "gpanders/nvim-parinfer",
		ft = lisp_file_types,
	},

	{
    "clojure-vim/vim-jack-in",
		ft = { "clojure" },
		dependencies = {
      {"radenling/vim-dispatch-neovim"},
      {"tpope/vim-dispatch"},
    },
	},

	-- Motion plugins
	{
    "ggandor/leap.nvim",
		config = function()
			require("leap").add_default_mappings()
		end,
    dependencies = {
      {"tpope/vim-repeat"},
    },
    lazy = false,
	},

	--{"tpope/vim-repeat"},

  -- Folding
  {
    "kevinhwang91/nvim-ufo",
    dependencies = {
      "kevinhwang91/promise-async",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      provider_selector = function (bufnr, filetype, buftype)
        return {"treesitter", "indent"}
      end
    end,
    event = {"VeryLazy"},
  }

}

return plugins
