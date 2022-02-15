require'nvim-treesitter.configs'.setup {
  ensure_installed = {'vim','lua','http','json','dart','javascript','yaml'},
   highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
   incremental_selection={
    enable = true,
    keymaps = {
     init_selection = "gnn",
     node_incremental = "grn",
     scope_incremental = "grc",
     node_decremental = "grm",
    },
  },
  query_linter={
    enable = true,
  },
}
