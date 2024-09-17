let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/nc/work/alpine/wiki/ae2.0_wiki
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +3 ~/nc/work/alpine/wiki/index.md
badd +4 ~/nc/work/alpine/wiki/diary/2024-09-10.md
badd +11 ae-site2.0.md
badd +3 ~/nc/work/alpine/wiki/diary/diary.md
badd +3 ~/nc/work/alpine/wiki/diary/2024-08-08.md
badd +1 css-tooltip.md
badd +8 ~/nc/work/alpine/wiki/diary/2024-02-02.md
badd +3 ~/nc/work/alpine/wiki/diary/2024-07-08.md
badd +23 ~/nc/work/alpine/ae2.0/assets/pod/backups/readme.md
badd +3 ~/nc/work/alpine/wiki/diary/2024-09-11.md
badd +1 ~/nc/work/alpine/wiki/diary/2024-09-12.md
badd +10 ~/.config/nvim/init.lua
badd +1 ~/.config/tmux/tmux.conf
argglobal
%argdel
$argadd ae-site2.0.md
edit ~/.config/nvim/init.lua
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 10 - ((9 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 0
lcd ~/nc/work/alpine/wiki/ae2.0_wiki
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
