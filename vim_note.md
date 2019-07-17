#Trick & Tip
* SCROLLING + SCREENS:
- Screen positions H M L
- Scrolling Ctrl-U/D/B/F

#Delete ^M
- :e ++ff=dos

* EDITING
- e[dit] {file}
- f[ind] {file}
- goto file: gf
- Alternate buffer: Ctrl-^

* SEARCHING
- /{pattern}
- ?{pattern}
- Search forward for word under cursor: *
- Search backward for word under cursor: #
- Goto declaration: gd

* MARKS:
- m{a-zA-Z} sets up a custom location
- \`{a-zA-Z} to jump to mark

* TAGS:
- Ctrl-] to jump to keyword definition
- Ctrl-t to pop from the tag stack
- :tags to see all tags
- see list of function or tags g-] 

* BUFFERS
- :bn |  go to next buffer 
- :b {filename}  | go to buffer {filename} 
- :bd  | delete current buffer 
- :buffers  | pring out all buffers
- :bufdo {cmd}  | execute {cmd} for all buffers

* WINDOWS, BUFFER, VIEWPORTS
- <Ctrl-w> s | split window
- <Ctrl-w> v | split window vertically
- <Ctrl-w> q | close window
- <Ctrl-w> w | alternate window
- <Ctrl-w> r | rotate windows
- :windo {cmd} | execute {cmd} for all windows
- :sf {file} | split window add :find {file}
- :vert {cmd} | make any split {cmd} vertical

* Tabs
- gt | go to next tab
- gT | go to prev tab
- :tabc | close tab
- :tabe | open tab
- :tabo | close all other tabs
#Useful
https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/
https://qiita.com/miyagaw61/items/bcd1fb86bbc69e1aa3a3
https://stackoverflow.com/questions/22531360/no-module-named-setuptools
https://stackoverflow.com/questions/21055859/what-are-the-risks-of-running-sudo-pip
https://hackernoon.com/5-vim-plugins-i-cant-live-without-for-javascript-development-f7e98f98e8d5
https://adminhacks.com/vim-javascript.html
https://github.com/ap/vim-css-color
https://github.com/tyru/caw.vim
https://github.com/leafoftree/vim-vue-plugin
#Install Neovim
https://github.com/neovim/neovim/wiki/Installing-Neovim
#remove Neovim
https://www.thelinuxfaq.com/ubuntu/ubuntu-17-04-zesty-zapus/neovim?type=uninstall
