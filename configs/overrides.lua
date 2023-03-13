local M = {}

M.treesitter = {
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
  indent = {
    enable = true,
    disable = {
      "python"
    },
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
}

M.mason = {
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
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
