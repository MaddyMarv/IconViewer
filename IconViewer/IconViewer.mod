return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`IconViewer` mod must be lower than Vermintide Mod Framework in your launcher's load order.")

		new_mod("IconViewer", {
			mod_script       = "IconViewer/scripts/mods/IconViewer/IconViewer",
			mod_data         = "IconViewer/scripts/mods/IconViewer/IconViewer_data",
			mod_localization = "IconViewer/scripts/mods/IconViewer/IconViewer_localization",
		})
	end,
	packages = {},
}
