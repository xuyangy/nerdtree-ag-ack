if exists("g:loaded_nerdtree_ag_ackvim")
  finish
endif

let g:loaded_nerdtree_ag_ackvim = 1

call NERDTreeAddMenuItem({
  \ 'text': '(g)rep the directory under curosr',
  \ 'shortcut': 'g',
  \ 'callback': 'NERDTreeAg'})

function! NERDTreeAg()
  let dirnode = g:NERDTreeDirNode.GetSelected()
  let dirpath = dirnode.path.str()

  let option_pattern = input('Enter Ag option and pattern: ')
  "2 or more options specified
  if option_pattern=~#'^-\{1,2}.\+-\{1,2}'
    let options = substitute(option_pattern,'\(-\{1,2}.\+ -\{1,2}.\{-} \)\(.*\)','\=submatch(1)','')
    let pattern = substitute(option_pattern,'\(-\{1,2}.\+ -\{1,2}.\{-} \)\(.*\)','\=submatch(2)','')
  "only 1 option specified
  elseif option_pattern=~#'^-\{1,2}'
    let options = substitute(option_pattern,'\(-\{1,2}.\{-1,} \)\(.*\)','\=submatch(1)','')
    let pattern = substitute(option_pattern,'\(-\{1,2}.\{-1,} \)\(.*\)','\=submatch(2)','')
  "no option, only pattern
  else
    let options = ''
    let pattern = option_pattern
  endif

  if pattern == ''
    echo 'grep cancelled'
    return
  endif

  wincmd w

  silent exec "Ack "." ".options." '".pattern."' ".dirpath

endfunction
