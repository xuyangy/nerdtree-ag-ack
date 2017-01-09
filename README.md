nerdree-ag-ackvim
=================

Grep code (by [The Silver Searcher][Ag]) directly in Vim (by [ack.vim]) and even directly in Nerdtree (powered by [this plugin](me)). 

- [Intro] (#intro)
- [Install] (#install)

[Ag]: https://github.com/ggreer/the_silver_searcher
[ack.vim]: https://github.com/mileszs/ack.vim
[ag.vim]: https://github.com/rking/ag.vim
[me]: https://github.com/xuyangy/nerdtree-ag-ack 

Intro
-----

Use [ack.vim] as front end ([ag.vim] is deprecated). Use [The Silver Searcher (Ag)][Ag] as backend search engine.


Install
-------
### Prerequistes
- install [The Silver Searcher](Ag)
- install [ack.vim]

### Install [this plugin](me)
- curl -
### Configure [ack.vim]
- Configure [ack.vim] to use [The Silver Searcher](Ag) instead of [Ack] by adding following to your ~/.vimrc file:  
  `let g:ackprg = 'ag --nogroup --nocolor --column'`

[Ack]: http://search.cpan.org/%7Epetdance/ack/ack
