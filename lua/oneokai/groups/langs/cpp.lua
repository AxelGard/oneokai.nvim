-- C++ (its treesitter queries build on C's, so the captures listed in c.lua also work here as `@capture.cpp`)
-- Uncomment and change an entry to style it for C++ only.
-- The commented values are what C++ gets from the general groups today.
-- Use `:Inspect` on a word to see which group is coloring it.
return function(c, cfg, fg)
    return {
        -- treesitter: `@capture.cpp`
        -- ["@module.cpp"] = fg.fg,                                      -- namespace names
        -- ["@keyword.modifier.cpp"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- const, static, virtual, override
        -- ["@keyword.type.cpp"] = fg.red,                               -- class, struct, enum
        -- ["@keyword.operator.cpp"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- new, delete, sizeof
        -- ["@keyword.exception.cpp"] = fg.red,                          -- try, catch, throw
        -- ["@keyword.coroutine.cpp"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- co_await, co_return
        -- ["@type.cpp"] = fg.blue,
        -- ["@type.builtin.cpp"] = fg.cyan,                              -- int, bool, auto
        -- ["@constructor.cpp"] = { fg = c.green, fmt = "bold" },
        -- ["@function.method.cpp"] = { fg = c.green, fmt = cfg.code_style.functions },
        -- ["@function.method.call.cpp"] = { fg = c.green, fmt = cfg.code_style.functions },
        -- ["@variable.member.cpp"] = { fg = c.fg, fmt = cfg.code_style.variables }, -- fields
        -- ["@variable.builtin.cpp"] = { fg = c.orange, fmt = cfg.code_style.variables }, -- this
        -- ["@constant.builtin.cpp"] = fg.purple,                        -- nullptr, true, false

        -- LSP semantic tokens (clangd): `@lsp.type.<token>.cpp`, these win over treesitter
        -- ["@lsp.type.namespace.cpp"] = fg.fg,
        -- ["@lsp.type.class.cpp"] = fg.blue,
        -- ["@lsp.type.property.cpp"] = fg.fg,

        -- legacy vim syntax, only used when treesitter isn't running for the buffer
        cppStatement = { fg = c.light_grey, fmt = "bold" },
        -- old treesitter names from before Neovim 0.8, these no longer do anything
        cppTSInclude = fg.green,
        cppTSConstant = fg.cyan,
        cppTSConstMacro = fg.cyan,
        cppTSOperator = fg.red,
    }
end
