return {
	-- Save and load buffer (a session) automatically for each folder
	'rmagatti/auto-session',
	lazy = false,

	config = function()
		require("auto-session").setup {
			log_level = "error",
			auto_session_suppress_dirs = { "~/", "~/Downloads", '/' },
		}
	end
}
