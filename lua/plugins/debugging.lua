return {
	-- DAP (Debug Adapter Protocol)
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"mfussenegger/nvim-dap-python"
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		dapui.setup()

		-- Python debug
		-- Manual installation required.
		-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#python
		-- mkdir .virtualenvs
		-- cd .virtualenvs
		-- python -m venv debugpy
		-- debugpy/bin/python -m pip install debugpy
		require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")

		-- Open and close debug UI
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "[D]ebug toggle [B]reakpoint" })
		-- Start debuging
		vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "[D]ebug [C]ontinue" })
	end,
}
