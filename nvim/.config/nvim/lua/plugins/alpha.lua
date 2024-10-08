return {
	"goolord/alpha-nvim",
	lazy = false,
	keys = {
		{"<leader>aa", "<cmd>Alpha<cr>", desc="Open Alpha"}
	},
	dependencies = {
		'telescope-project.nvim',
	},
	opts = function()
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⢀⠀⣠⡾⠿⠹⠟⣲⡿⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⡾⠛⣿⠇⠩⣘⡟⣀⢀⠛⠀⠉⢉⡽⠦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣴⣿⣟⣛⣷⣾⣤⣦⡴⣿⣽⣴⣾⣤⣤⣵⣮⣛⡂⠀⠀⠀⠀⠀    ⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣷⣼⢻⠛⣿⣿⡟⣿⣦⢰⣵⣯⣤⣤⠀⠀    ⠀⠀⠀]],
			[[⠀   ⠀⠀⠀⠀⠀⠀⣈⣀⠝⣽⠝⠋⢰⡿⣿⣿⣦⣏⣷⣿⡞⠋⠈⠀⠌⠐⡖⠁⢰⠻⠽⣤⡀⠀⠀⠀⠀⠀  ]],
			[[⠀   ⠀⠀⠀⣠⣶⣾⣯⠹⡦⠑⡆⠀⣀⠐⠛⣿⢿⢇⣽⣿⣿⣶⣾⠀⢀⣬⣇⣆⣀⡀⣶⣳⡆⠀⠀⠀⠀⠀  ]],
			[[⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣶⡰⢶⣦⢀⣤⣈⣀⠉⣾⡏⠿⣿⢯⣿⣿⣿⡟⠙⢀⡟⠛⠿⣷⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠘⡻⣻⣿⣿⣿⣤⣿⣿⣾⣹⣿⣿⢟⠻⠿⠀⠟⢀⡀⣸⣯⡄⠲⠀⠀⠀⡐⢉⠙⣻⣿⣿⣀⡀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⡀⠀⠐⠻⠿⣟⣻⣿⣧⢯⣽⣿⢫⣶⡾⢿⡧⣠⣮⡴⣽⣿⣋⣁⠔⠉⠣⢨⠣⣲⡿⢿⠿⠟⠃⠀⠀⠀⠀⠀]],
			[[⠀⠀⠠⣾⣿⣷⣿⣶⣶⣿⣿⢊⠹⠉⣻⡿⣭⣿⠷⠀⣻⣷⣮⣾⠿⣟⡿⢿⣶⣺⣤⣠⣷⣷⣿⣦⣿⠇⣲⣶⣄⠀⠀⠀]],
			[[⠀⠀⢨⣿⣿⢿⣿⣿⣟⣙⣩⣯⣿⣿⣿⣿⣧⣿⣶⣿⣿⠿⠙⠈⠚⠀⢀⠀⠉⢟⠻⣍⠋⠐⡉⠉⠁⠄⢙⡟⠉⠀⠀⠀]],
			[[⠀⠐⠻⠻⢻⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣬⣴⠠⠐⣀⣠⡙⣿⡶⠚⡄⣸⢋⡀⠄⠀⢌⢡⣿⡥⠀⠀]],
			[[⠀⠀⠀⠐⠿⢿⠿⣿⣿⣿⣿⣿⣿⣟⣽⣿⣿⣯⣻⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣰⣬⣿⣿⣤⣐⣍⣻⡾⠅⠀⠀]],
			[[⠀⠀⠀⠀⠀⠘⠀⠙⠉⢻⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠛⠁⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⠟⣿⣿⣿⣿⣿⣿⣿⠿⠻⠿⢻⣿⣿⡆⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⢩⢿⡟⠻⠛⠃⠛⠟⠃⠘⣿⣏⡗⣴⡿⠁⠀⠛⠛⡟⠟⠀⠀⠀⠀⠙⠛⠛⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⢀⣿⡯⣯⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡗⣧⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⣿⣿⢿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣼⢿⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⣀⣦⣾⣶⣶⣶⣿⣿⣿⣿⢿⢸⠾⣿⣶⣶⣷⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⣤⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣗⣿⡟⣷⢹⣿⣿⣿⣿⣿⣧⣦⣤⣄⣀⡀⢀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⢀⠀⣄⣿⣀⣀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣟⣿⣿⡿⣿⣿⣟⡿⠄⠀⠀⠀⠀]],
			[[⢠⢦⣦⣿⡿⠿⡿⠿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠫⣷⣿⣾⣿⣿⣿⣧⣦⣦⣿⣦⣶⣀⣄⡀]],
			[[⠉⢰⣤⣍⠛⣉⡙⠻⠿⠞⢛⣦⣧⣭⣴⣾⣿⣿⣿⣿⣿⣾⣿⣿⣿⣏⣽⡉⠻⠟⠿⣭⣾⣿⣧⡜⠛⠛⠻⣯⠤⠏⠀⠃]],
			[[⠀⠙⠟⠈⠀⠉⠃⠀⠀⠀⠀⠀⠘⢮⡿⠟⠛⠛⢿⣿⣿⡿⡛⡿⠿⠄⠉⠁⠀⠀⠺⠟⠏⠁⠈⠁⠐⠛⠓⠚⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠂⠉⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		}
		dashboard.section.header.opts.hl = "Green"

		dashboard.section.buttons.val = {
			dashboard.button("e", "  New File", "<cmd>ene<bar>startinsert<cr>"),
			dashboard.button("p", "  Open Project", "<cmd>Telescope project<cr>"),
			dashboard.button("f", "  Open File", "<cmd>Telescope file_browser<cr>"),
			dashboard.button("r", "  Open Recent", "<cmd>Telescope oldfiles<cr>"),
			dashboard.button("z", "  Telekasten", "<cmd>Telekasten panel<cr>"),
			dashboard.button("c", "  Edit Configuration",
				"<cmd>cd ~/.config/nvim/<bar>Telescope file_browser<cr>"),
			dashboard.button("l", "󰒲  Plugin Manager", "<cmd>Lazy<cr>"),
			dashboard.button("q", "󰩈  Quit", "<cmd>q<cr>"),
		}

		return dashboard.opts
	end,
}
