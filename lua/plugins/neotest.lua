return {
  -- Neotest plugin
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      -- Add your test adapters here
      "nvim-neotest/neotest-go", -- Example adapter for Go
      -- Add more adapters as needed (Python, JavaScript, etc.)
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-go"), -- Example for Go, replace with your adapter
          -- Add other adapters here
        },
        -- Optionally load environment variables from an .env file
        strategy = function()
          local env_file = "/Users/bassam.sayed/Documents/repos/ai-backend-go/env.local"
          -- You can load the .env file here using any method you prefer
          local load_env_cmd = "set -a && source " .. env_file .. " && set +a"
          vim.fn.system({ "/bin/zsh", "-c", load_env_cmd })

          return {
            env = vim.fn.environ(),
          }
        end,
      })
    end,
  },
}
