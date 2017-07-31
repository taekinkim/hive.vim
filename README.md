# hive.vim

Vim syntax highlighting for hive

## Status

This is a fork of [autowitch/hive.vim](https://github.com/autowitch/hive.vim).
The original project appears to have gone stale and isn't currently responsive
to pull requests, so I've started maintaining my own copy here. Contributions
are welcome!

## Installation

Append these line to `~/.vimrc`:

```vim
" for .hql files
au BufNewFile,BufRead *.hql set filetype=hive expandtab

" for .q files
au BufNewFile,BufRead *.q set filetype=hive expandtab
```
