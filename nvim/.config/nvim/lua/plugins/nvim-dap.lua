return {
	'mfussenegger/nvim-dap',
	event = { "BufReadPost", "BufNew" },
	keys = {
		{ "<leader>db", function() require('dap').toggle_breakpoint() end },
		{ "<leader>dc", function() require('dap').continue() end },
		{ "<leader>ds", function() require('dap').step_into() end },
		{ "<leader>dn", function() require('dap').step_over() end },
	},
	config = function()
		local dap = require('dap')
		dap.adapters.lldb = {
			type = 'executable',
			command = '/usr/bin/lldb-dap',
			name = 'lldb'
		}

		dap.configurations.rust = {
			{
				-- If you get an "Operation not permitted" error using this, try disabling YAMA:
				--  echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
				name = "Attach to process",
				type = 'lldb', -- Adjust this to match your adapter name (`dap.adapters.<name>`)
				request = 'attach',
				pid = require('dap.utils').pick_process,
				args = {},
			},
			{
				name = 'Launch',
				type = 'lldb',
				request = 'launch',
				program = function()
					return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
				end,
				cwd = '${workspaceFolder}',
				stopOnEntry = false,
				args = {},
				initCommands = function()
					-- Find out where to look for the pretty printer Python module
					local rustc_sysroot = vim.fn.trim(vim.fn.system('rustc --print sysroot'))

					local script_import = 'command script import "' ..
					    rustc_sysroot .. '/lib/rustlib/etc/lldb_lookup.py"'
					local commands_file = rustc_sysroot .. '/lib/rustlib/etc/lldb_commands'

					local commands = {}
					local file = io.open(commands_file, 'r')
					if file then
						for line in file:lines() do
							table.insert(commands, line)
						end
						file:close()
					end
					table.insert(commands, 1, script_import)

					return commands
				end,

				-- 💀
				-- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
				--
				--    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
				--
				-- Otherwise you might get the following error:
				--
				--    Error on launch: Failed to attach to the target process
				--
				-- But you should be aware of the implications:
				-- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
				-- runInTerminal = false,
			},
		}
	end
}
