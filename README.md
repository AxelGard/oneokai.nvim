# onemonokai.nvim


<img src="./doc/noevim-onemonokai-icon.png" style="width:30%">


A fork of [onedark.nvim](https://github.com/navarasu/onedark.nvim), 
converted to be simular to [One Monokai](https://github.com/azemoh/vscode-one-monokai).

Since this is a fork, it should still have all the support for tree sitter and highlighting. 
> For latest [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter) syntax highlight, upgraded to Neovim 0.8.0 or later built with tree-sitter 0.20.3+


When I first started using NeoVim I wanted to use one of my favorite color themes, One Monokai. 
So I googled around and found [cpea2506/one_monokai.nvim](https://github.com/cpea2506/one_monokai.nvim). 
It looked like the thing a wanted, but I noticed that in some cases that the colors felt of and some things where had the wrong color. So I switched to using onedark.nvim. But I was missing one monokai. 
So I decided to fork onedrak.nvim and remap the colors to be one monokai. Meaning that I have done a direct color re-mapping from onedark.nvim to One Monokai.


## install 
Install via package manager
```vim
" Using Vim-Plug
Plug 'AxelGard/onemonokai.nvim'
```
or
```lua
-- Using Packer
use 'AxelGard/onemonokai.nvim'
```

## setup and config 

enable the theme 
```vim
" Vim
colorscheme onemonokai
```

```lua
-- Lua
require('onemonokai').load()
```

**OBS I have not fixed all the shades of dark yet like: darker, cool, deep, warm, warmer, light**

---
* This theme is a fork of [onedark.nvim](https://github.com/navarasu/onedark.nvim).
* The colors are based on the [One Monokai](https://github.com/azemoh/vscode-one-monokai) theme for vscode.
