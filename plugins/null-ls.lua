local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local b = null_ls.builtins

local sources = {

	-- Clojure
	b.formatting.zprint, -- Install from repos
	b.diagnostics.clj_kondo,

	-- Lua
	b.formatting.stylua,

	-- Shell
	b.formatting.shfmt,
	b.diagnostics.shellcheck.with({ diagnostics_format = "#{m} [#{c}]" }),

  -- Markdown
  b.formatting.markdownlint,

  -- PHP
  b.formatting.phpcsfixer,

  -- SQL
  b.formatting.sql_formatter
}

null_ls.setup({
	debug = true,
	sources = sources,
})
