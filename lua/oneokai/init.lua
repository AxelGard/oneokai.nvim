local M = {}

---Change oneokai option (vim.g.oneokai_config.option)
---It can't be changed directly by modifing that field due to a Neovim lua bug with global variables (oneokai_config is a global variable)
---@param opt string: option name
---@param value any: new value
function M.set_options(opt, value)
    local cfg = vim.g.oneokai_config
    cfg[opt] = value
    vim.g.oneokai_config = cfg
end

---Apply the colorscheme (same as ':colorscheme oneokai')
function M.colorscheme()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.termguicolors = true
    vim.g.colors_name = "oneokai"
    if vim.o.background == 'light' then
        M.set_options('style', 'light')
    elseif vim.g.oneokai_config.style == 'light' then
        M.set_options('style', 'dark')
    end
    require('oneokai.highlights').setup()
    require('oneokai.terminal').setup()
end

---Toggle between oneokai styles
function M.toggle()
    local index = vim.g.oneokai_config.toggle_style_index + 1
    if index > #vim.g.oneokai_config.toggle_style_list then index = 1 end
    M.set_options('style', vim.g.oneokai_config.toggle_style_list[index])
    M.set_options('toggle_style_index', index)
    if vim.g.oneokai_config.style == 'light' then
        vim.o.background = 'light'
    else
        vim.o.background = 'dark'
    end
    vim.api.nvim_command('colorscheme oneokai')
end

---Setup oneokai.nvim options, without applying colorscheme
---@param opts table: a table containing options
function M.setup(opts)
    if not vim.g.oneokai_config or not vim.g.oneokai_config.loaded then    -- if it's the first time setup() is called
        vim.g.oneokai_config = vim.tbl_deep_extend('keep', vim.g.oneokai_config or {}, require("oneokai.default").config)
        M.set_options('loaded', true)
        M.set_options('toggle_style_index', 0)
    end
    if opts then
        vim.g.oneokai_config = vim.tbl_deep_extend('force', vim.g.oneokai_config, opts)
        if opts.toggle_style_list then    -- this table cannot be extended, it has to be replaced
            M.set_options('toggle_style_list', opts.toggle_style_list)
        end
    end
    if vim.g.oneokai_config.toggle_style_key then
      vim.api.nvim_set_keymap('n', vim.g.oneokai_config.toggle_style_key, '<cmd>lua require("oneokai").toggle()<cr>', { noremap = true, silent = true })
    end
end

function M.load()
  vim.api.nvim_command('colorscheme oneokai')
end

return M
