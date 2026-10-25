-- Python
-- Uncomment and change an entry to style it for Python only.
-- The commented values are what Python gets from the general groups today.
-- Use `:Inspect` on a word to see which group is coloring it.
return function(c, cfg, fg)
    return {
        -- treesitter: `@capture.python`
        -- ["@attribute.python"] = fg.fg,                                -- @decorator
        -- ["@attribute.builtin.python"] = fg.cyan,                      -- @property, @staticmethod
        -- ["@type.python"] = fg.blue,                                   -- class names
        -- ["@type.builtin.python"] = fg.cyan,                           -- int, str, list
        -- ["@keyword.function.python"] = { fg = c.cyan, fmt = cfg.code_style.functions }, -- def, lambda
        -- ["@keyword.import.python"] = fg.red,                          -- import, from
        -- ["@keyword.operator.python"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- and, or, not, in, is
        -- ["@keyword.exception.python"] = fg.red,                       -- try, except, raise
        -- ["@variable.builtin.python"] = { fg = c.orange, fmt = cfg.code_style.variables }, -- self, cls
        -- ["@variable.parameter.python"] = fg.orange,
        -- ["@variable.member.python"] = { fg = c.fg, fmt = cfg.code_style.variables }, -- self.x
        -- ["@constant.builtin.python"] = fg.purple,                     -- None, True, False
        -- ["@function.builtin.python"] = { fg = c.cyan, fmt = cfg.code_style.functions }, -- print, len, range
        -- ["@function.method.call.python"] = { fg = c.green, fmt = cfg.code_style.functions },
        -- ["@constructor.python"] = { fg = c.green, fmt = "bold" },         -- MyClass(), __init__
        -- ["@module.python"] = fg.fg,                                   -- imported module names
        -- ["@string.documentation.python"] = { fg = c.yellow, fmt = cfg.code_style.strings }, -- """docstrings"""

        -- LSP semantic tokens (pyright / basedpyright): `@lsp.type.<token>.python`, these win over treesitter
        -- ["@lsp.type.class.python"] = fg.blue,
        -- ["@lsp.type.decorator.python"] = fg.fg,

        -- legacy vim syntax, only used when treesitter isn't running for the buffer
        pythonClass = fg.cyan,
        pythonDecorator = fg.green,
    }
end
