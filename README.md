nerdree-ag-ack
=================

Grep code (by [The Silver Searcher][Ag]) directly in Vim (by [ack.vim]) and even directly in Nerdtree (powered by [this plugin](me)). 

- [Intro] (#intro)
- [Install] (#install)
- [Usage](#usage)

[Ag]: https://github.com/ggreer/the_silver_searcher
[ack.vim]: https://github.com/mileszs/ack.vim
[ag.vim]: https://github.com/rking/ag.vim
[me]: https://github.com/xuyangy/nerdtree-ag-ack 

Intro
-----

Use [ack.vim] as front end ([ag.vim] is deprecated). Use [The Silver Searcher (Ag)][Ag] as backend search engine.


Install
-------
Use your favorite plugin manager.
- install [The Silver Searcher](Ag)
- install [ack.vim]
- install [this plugin](me)
- Configure [ack.vim] to use [The Silver Searcher](Ag) instead of [Ack] by adding following to your ~/.vimrc file:

    ```

    let g:ackprg = 'ag --nogroup --nocolor --column'

    ```  
    or:

    ```

    let g:ackprg = 'ag --vimgrep'

    ```
    if you would like to have every match on a single line be reported.

Usage
-----
1. Open NERDTree
2. Move cursor to the target folder
3. Press mg
4. Enter [The Silver Searcher](Ag) options and your search pattern
5. Press Enter

[Ack]: http://search.cpan.org/%7Epetdance/ack/ack
