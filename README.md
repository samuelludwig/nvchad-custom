# NvChad-Custom

Things you will need
  1. Install NPM via `nvm`, the "node-version-manager", in order to install some lang servers
  2. Install `gcc` and `libstdc++` (for treesitter), the package names might vary depending on distro
  3. (If you're on a centos-based distro, make sure your clojure-lsp works properly, you may need to grab and alterate binary)
  4. Install `python3-venv` (for the dockerfile language server)
  5. Install `go` (for the sql-language server)
  6. Install `composer` to make use out of the PHP ls
  7. Install clojure and babashka to make use out of the clojure-tooling
    a) Additionally, add an nrepl alias to your users deps.edn

