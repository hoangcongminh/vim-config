require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n','<space>p',"<cmd>lua require('telescope.builtin').find_files()<cr>",opts)
vim.api.nvim_set_keymap('n','<space>fg',"<cmd>lua require('telescope.builtin').live_grep()<cr>",opts)
vim.api.nvim_set_keymap('n','<space>fb',"<cmd>lua require('telescope.builtin').buffers()<cr>",opts)
vim.api.nvim_set_keymap('n','<space>fo',"<cmd>lua require('telescope.builtin').oldfiles()<cr>",opts)
vim.api.nvim_set_keymap('n','<space>fr',"<cmd>lua require('telescope.builtin').resume()<cr>",opts)
vim.api.nvim_set_keymap('n','<space>qf',"<cmd>lua require('telescope.builtin').quickfix()<cr>",opts)
vim.api.nvim_set_keymap('n','<space>lj',"<cmd>lua require('telescope.builtin').jumplist()<cr>",opts)
vim.api.nvim_set_keymap('n','<space>gr',"<cmd>lua require('telescope.builtin').lsp_references()<cr>",opts)
vim.api.nvim_set_keymap('n','<space>gd',"<cmd>lua require('telescope.builtin').lsp_definitions()<cr>",opts)
-- vim.api.nvim_set_keymap('n','<space>la',"<cmd>lua require('telescope.builtin').lsp_code_actions()<cr>",opts)
vim.api.nvim_set_keymap('n','<space>lw',"<cmd>lua require('telescope.builtin').lsp_workspace_diagnostics()<cr>",opts)
vim.api.nvim_set_keymap('n','<space>ld',"<cmd>lua require('telescope.builtin').lsp_document_diagnostics()<cr>",opts)
vim.api.nvim_set_keymap('n','<space>t',":Telescope<cr>",opts)
