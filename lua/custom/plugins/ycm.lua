return {
	"ycm-core/YouCompleteMe",
	config = function()
		vim.cmd([[
         let g:ycm_show_diagnostics_ui = 0
         let g:ycm_global_ycm_extra_conf='~/.local/share/nvim/lazy/YouCompleteMe/.ycm_extra_conf.py' 
         let g:ycm_collect_identifiers_from_tags_files = 1
         let g:ycm_min_num_of_chars_for_completion = 2
         let g:ycm_cache_omnifunc = 0
         let g:ycm_seed_identifiers_with_syntax = 1
         let g:ycm_key_detailed_diagnostics = ''
        ]])
	end,
}
