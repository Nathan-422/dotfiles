return {
	settings = {

	  filetypes = {
			"typescript",
			"typescriptreact",
			"typescript.tsx"
		},
	  cmd = {
			"typescript-language-server", "--stdio"
		},
		init_options = {
			hostInfo = "neovim"
		},
		root_dir = root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")

	}
}
