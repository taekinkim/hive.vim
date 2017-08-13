# hive.vim

This is a [Vim](http://www.vim.org/) plugin that provides language support for
[Apache Hive](https://hive.apache.org/).

## Status

This is a fork of [autowitch/hive.vim](https://github.com/autowitch/hive.vim).
The original project appears to have gone stale and isn't currently responsive
to pull requests, so I've started maintaining my own copy here. Contributions
are welcome!

## Installation

### Using [Plug](https://github.com/junegunn/vim-plug)

1. Add `Plug 'jparise/hive.vim'` to `~/.vimrc`
2. `vim +PluginInstall +qall`

### Using [Vundle](https://github.com/gmarik/vundle)

1. Add `Plugin 'jparise/hive.vim'` to `~/.vimrc`
2. `vim +PluginInstall +qall`

### Using [Pathogen](https://github.com/tpope/vim-pathogen)

1. `cd ~/.vim/bundle`
2. `git clone https://github.com/jparise/hive.vim.git`

## Hive Language References

The following references are used as the sources of truth with regard to the
Hive language specification.

- [Hive Language Manual][lm]
    - [Data Definition Language][lm-ddl]
    - [Operators and User-Defined Functions][lm-udf]

[lm]: https://cwiki.apache.org/confluence/display/Hive/LanguageManual
[lm-ddl]: https://cwiki.apache.org/confluence/display/Hive/LanguageManual+DDL
[lm-udf]: https://cwiki.apache.org/confluence/display/Hive/LanguageManual+UDF
