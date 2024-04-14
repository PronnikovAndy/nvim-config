return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files in cwd" })
    -- live grep require ripgrep to be installed
    vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = "Find string usgin ripgrep" })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "List open buffers in currect instance" })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "List available help tags" })

    vim.keymap.set('n', '<leader>gb', builtin.git_branches, { desc = "List all branches with log preview" })
    vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = "List git commits with diff preview" })
    vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = "List current changes per file with diff preview" })
  end,
}
