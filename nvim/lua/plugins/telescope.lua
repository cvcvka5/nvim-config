return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "Telescope",
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<CR>" },
    { "<leader>fg", "<cmd>Telescope live_grep<CR>" },
    { "<leader>fb", "<cmd>Telescope buffers<CR>" },
    { "<leader>fr", "<cmd>Telescope oldfiles<CR>" },
  },
  config = function()
    require("telescope").setup({})
  end,
}

