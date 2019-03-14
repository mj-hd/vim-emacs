augroup emacs
	au!
	autocmd CmdUndefined * call emacs#open()
augroup END
