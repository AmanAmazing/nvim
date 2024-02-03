## Setup
### Delete old cached files 
`rm -rf ~/.local/share/nvim`
Then in your neovim config
`rm plugin/packer_compiled.lua` 

### We have to download the Packer manager 
`git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

then go to the packer.lua file in your config and 
`:so`
Then
`:PackerSync` to download all the packages.
restart neovim after this. 
`:Mason` to start downloading the language servers 


### Setting up marksman for markdown
`brew install marksman`
`:MasonInstall marksman`

## Terminology 
### Buffer
In vim you are not really editing the text of a file. You are simply loading all the text into a buffer and then editing it in the buffer before saving it back into the file. 
`:h buffer` - this returns help page for buffers 
### Help menu
`:h`
### Modes
There are a few modes to be aware of:
1) Normal - Where you edit text
2) Insert - Where you enter text 
3) Visual line - Where you highlight text by lines
4) Visual block - Where you can highlight by blocks
5) Command - Where you execute commands `:`

## Movement commands
you can exit back into normal mode either by the escape key or ctrl + c. You can also use ctrl + c to escape any commands that you were in the middle of typing. 
n - `h j k l` are used for moving left down up and right respectively. 
n - `%` moves to the corresponding bracket/ parenthesis 
n - `zz` to centre the screen

n - `V y p ` highlights the entire line and then yanks it. It is then pasted 

n - `v w y p` Enters visual mode. highlights the word, yanks it, then pastes it. You could use capital P if you want to paste before the yanked word. 
n - `u` undos any alterations
n - `zz` centers the text on your screen. But you can remove the need for that with 


In vim when you delete, you are essentially yanking. So if you replace y with d (deleting instead of yanking), it will get rid of that selection but you can still paste it by 'p'. 

#### Multiple ways of entering insert mode
You can use the most literal `i` keybinding. This will enter you to the left (inside) of your cursor while `a` will enter you to the right (outside) of your cursor. Capital `I` and `A` will enter you to the first and last non-whitespace characters on your line. 
Another way to enter insert mode is by using `o` and `O` (lowercase and uppercase Os). This will create a new line below or above the current line and enter into insert mode on that said line. 
It also respects the indentation of your programming language when entering the insert mode with the letter o.

## Vim file customisations with command 
To turn of the need to centre the screen with `zz` command you can `:set scrolloff=8`



# Customisations 


When making customisations to the remap.lua file, save it and source it by `:so`
You can also make it get sourced every time by requiring it in the nvim init.lua file. 

We are also using packer to manage the installations. Once you have put the use part in the packer file, you have to source it with `:so`
`V%=` to format (indent) any. code in brackets or braces. 
To quickly bring up the file menu `<leader>pv`
## Telescope remaps
use `<leader>pf` to find files
use `<C-p>` to find git files
use `<leader>ps` to perform grep search on word

## Treesitter
allows for incredibly fast parsing of your current file. It provides syntax highlighting and indentations and incredibly fast. 


## Harpoon 
`<leader>a` to add file
`<C-e>` to toggle ui 
`C-h` to switch to file 1 
`C-t` to switch to file 2
n for file 3 
s for file 4




### Mass commenting and uncommenting 
For those tasks I use most of the time [block selection](http://vimdoc.sourceforge.net/htmldoc/visual.html).

Put your cursor on the first `#` character, press CtrlV (or CtrlQ for gVim), and go down until the last commented line and press x, that will delete all the `#` characters vertically.

For commenting a block of text is almost the same:

1.  First, go to the first line you want to comment, press CtrlV. This will put the editor in the `VISUAL BLOCK` mode.
2.  Then using the arrow key and select until the last line
3.  Now press ShiftI, which will put the editor in `INSERT` mode and then press #. This will add a hash to the first line.
4.  Then press Esc (give it a second), and it will insert a `#` character on all other selected lines.

For the stripped-down version of vim shipped with debian/ubuntu by default, type `: s/^/#` in the third step instead (any remaining highlighting of the first character of each line can be removed with `:nohl`).
Commenting is much easier with the comment nvim plugin. See below for details. 



:lua ColorMyPencils() to bring waifu back 




## Comment 
In normal mode:
	`gcc` comments out the line 
	`gcw` add comment to the word 
	`gcA` adds comment to the end of the line 
	`gco` adds comment to the line below. If theres text, it pushes that text one line down 
	`gcO` add comment the line above. 
replacing c with b will allow you to enter block comments 


## Restarting LSP 
```
LspRestart
LspStart
LspStop
```
