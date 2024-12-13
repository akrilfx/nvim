return {
    {
        "mfussenegger/nvim-dap",
        lazy = true,
        event = "VeryLazy",
        config = function()
            vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
        end
    },
    {
        "mfussenegger/nvim-dap-python",
        lazy = true,
        event = "VeryLazy",
        ft = "python",
        dependencies = {
            "mfussenegger/nvim-dap",
            "rcarriga/nvim-dap-ui",
        },
        config = function(_, opts)
            local path = os.getenv("HOME") .. "/.local/share/nvim-default/mason/packages/debugpy/venv/bin/python"
            require("dap-python").setup(path)
        end

    },
    {
        "rcarriga/nvim-dap-ui",
        lazy = true,
        event = "VeryLazy",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
        },
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")
            dapui.setup()
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_initialized["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end

            -- Keymap
            vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "DAP Breakpoint"})
            vim.keymap.set("n", "<leader>dpr", "<cmd>DapToggleBreakpoint<CR>", { desc = "DAP Breakpoint"})

            vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
            vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
            vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
            vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
        end
    }
}
