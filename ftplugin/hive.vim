" Vim filetype plugin
" Language: Hive
" Maintainer: Jon Parise <jon@indelible.org>

if (exists("b:did_ftplugin"))
  finish
endif
let b:did_ftplugin = 1

setlocal comments=:--
setlocal commentstring=--\ %s
