return {
	{
		"junegunn/fzf",
		build = "./install --bin",
	},
	{
		"ibhagwan/fzf-lua",
		opts = { winopts = { preview = { default = "" } } },
	},
}
