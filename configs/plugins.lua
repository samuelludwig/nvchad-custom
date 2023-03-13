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
	{"Pocco81/TrueZen.nvim"},

	-- Override plugin definition options
	{
    "folke/which-key.nvim",
		enable = true,
	},

	{
    "ojroques/vim-oscyank",
		branch = "main",
	},

	-- LSP stuff
	{
    "neovim/nvim-lspconfig",
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},

	{
    "jose-elias-alvarez/null-ls.nvim",
		after = "nvim-lspconfig",
		config = function()
			require("custom.configs.null-ls")
		end,
	},

	-- TS needs certain c++ libraries present
	{
    "nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
        -- Vimish
				"lua",
				"vim",
				"fennel",

        -- Shellish
        "elvish",
        "bash",
				"fish",

        -- JVMish
				"clojure",
				"java",

        -- Infra + Scripting
				"dockerfile",
				"json",
				"yaml",
				"ini",
				"toml",
				"python",
				"make",

        -- PHP
				"php",
				"phpdoc",

        -- Web-ish
				"typescript",
				"javascript",
				"html",
				"css",

        -- Text
				"markdown",
				"markdown_inline",

        -- SQL
				"sql",

        -- Git
				"gitignore",
				"gitcommit",
				"gitattributes",
				"git_rebase",
				"diff",
			},

			playground = {
				enable = true,
				disable = {},
				updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
				persist_queries = false, -- Whether the query persists across vim sessions
				keybindings = {
					toggle_query_editor = "o",
					toggle_hl_groups = "i",
					toggle_injected_languages = "t",
					toggle_anonymous_nodes = "a",
					toggle_language_display = "I",
					focus_language = "f",
					unfocus_language = "F",
					update = "R",
					goto_node = "<cr>",
					show_help = "?",
				},
			},
		},
	},

	{"nvim-treesitter/playground"},

	-- These will require npm, and go
	{
    "williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				-- lua stuff
				"lua-language-server",
				"stylua",

				-- php
				"intelephense",
				"php-debug-adapter",
				"php-cs-fixer",

				-- web dev
				"css-lsp",
				"html-lsp",
				"typescript-language-server",
				"deno",
				"emmet-ls",
				"json-lsp",
				"eslint_d",
				"prettierd",

				-- python
				"python-lsp-server",
				"pyright",

				-- infra/db
				"nginx-language-server",
				"sqls",
				"sql-formatter",
				"ansible-language-server",
				"dockerfile-language-server",
				"yaml-language-server",

				-- shell
				"shfmt",
				"shellcheck",

				--lisps
				"clojure-lsp",
			},
		},
	},

	{
    "TimUntersberger/neogit",
    dependencies = {"nvim-lua/plenary.nvim"},
  },

	{
    "lewis6991/gitsigns.nvim",
		-- Use <leader>gb to get the blame line on-demand
		-- opts = {
		--   current_line_blame = true,
		-- },
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
		---    dependencies = {"radenling/vim-dispatch-neovim"},
	},

	{"radenling/vim-dispatch-neovim"},
	{"tpope/vim-dispatch"},

	-- Motion plugins
	{
    "ggandor/leap.nvim",
		config = function()
			require("leap").add_default_mappings()
		end,
	},

	{"tpope/vim-repeat"},
}
