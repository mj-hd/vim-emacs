function! emacs#open() abort
	enew!
	let s:bufnr = bufnr("%")
	setlocal nomodified
	call termopen("emacs", {"on_exit": "emacs#close"})
endfunction

function! emacs#close(job, code, event) abort
	execute ":buffer " . s:bufnr
	execute ":bd!"
endfunction
