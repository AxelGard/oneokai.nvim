# oneokai.nvim


<img src="./doc/noevim-onemonokai-icon.png" style="width:30%"> 

A fork of [onedark.nvim](https://github.com/navarasu/onedark.nvim), 
converted to be similar to [One Monokai](https://github.com/azemoh/vscode-one-monokai) not an exact copy.

Since this is a fork, it should still have all the support for tree sitter and highlighting. 
> For latest [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter) syntax highlight, upgraded to Neovim 0.8.0 or later built with tree-sitter 0.20.3+


When I first started using NeoVim I wanted to use one of my favorite color themes, One Monokai. 
So I googled around and found [cpea2506/one_monokai.nvim](https://github.com/cpea2506/one_monokai.nvim). 
It looked like the thing a wanted, but I noticed that in some cases that the colors felt of and some things where had the wrong color. So I switched to using onedark.nvim. But I was missing one monokai. 
So I decided to fork onedrak.nvim and remap the colors to be more like one monokai. Meaning that I have done a direct color re-mapping from onedark.nvim to One Monokai.
but the main colors are still from one dark, just a re mapping of colors.

## themes 

Since oneokai is a fork the same themes as onedark has. 
there are some example screen shoot in the **[./themes.md](./themes.md)**.

The default is dark theme.

<img width="100%" alt="Oneokai - dark" src="./doc/oneokai_dark.png">

But I would recommend you use darker.

## install 
Install via package manager
```vim
" Using Vim-Plug
Plug 'AxelGard/oneokai.nvim'
```
or
```lua
-- Using Packer
use 'AxelGard/oneokai.nvim'
```

## setup and config 

enable the theme 
```vim
" Vim
colorscheme oneokai
```

```lua
-- Lua
require('oneokai').load()
```

## styles 

There are some pre defined styles of the oneokai theme
`dark, darker, cool, deep, warm, warmer`, 
This are based on the [onedark.nvim#themes](https://github.com/navarasu/onedark.nvim#themes).

You can change it by

```lua
-- Lua
require('oneokai').setup {
    style = 'deep'
}
require('oneokai').load()
```
```vim
" Vim
let g:oneokai_config = {
    \ 'style': 'deep',
\}
colorscheme oneokai
```

## lualine 

Oneokai has lualine support

```lua
require('lualine').setup {
  options = {
    theme = 'oneokai',
    -- ... your lualine config
  }
}
```

---
* This theme is a fork of [onedark.nvim](https://github.com/navarasu/onedark.nvim).
* The colors are based on the [One Monokai](https://github.com/azemoh/vscode-one-monokai) theme for vscode.
