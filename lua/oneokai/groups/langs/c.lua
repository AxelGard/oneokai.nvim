-- C
-- Uncomment and change an entry to style it for C only.
-- The commented values are what C gets from the general groups today.
-- Use `:Inspect` on a word to see which group is coloring it.
return function(c, cfg, fg)
    return {
        -- treesitter: `@capture.c`
        -- ["@keyword.import.c"] = fg.red,                               -- #include
        -- ["@keyword.directive.c"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- #if, #ifdef, #pragma
        -- ["@keyword.directive.define.c"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- #define
        -- ["@constant.macro.c"] = fg.purple,                            -- macro names
        -- ["@function.macro.c"] = { fg = c.cyan, fmt = cfg.code_style.functions }, -- function-like macros
        -- ["@keyword.modifier.c"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- static, const, extern
        -- ["@keyword.type.c"] = fg.red,                                 -- struct, enum, union
        -- ["@type.c"] = fg.blue,
        -- ["@type.builtin.c"] = fg.cyan,                                -- int, char, void
        -- ["@type.definition.c"] = fg.blue,                             -- typedef names
        -- ["@property.c"] = fg.fg,                                      -- struct fields
        -- ["@variable.parameter.c"] = fg.orange,
        -- ["@function.call.c"] = { fg = c.green, fmt = cfg.code_style.functions },
        -- ["@constant.c"] = fg.purple,                                  -- ALL_CAPS names
        -- ["@label.c"] = fg.red,                                        -- goto labels
        -- ["@string.escape.c"] = { fg = c.cyan, fmt = cfg.code_style.strings }, -- \n, \t

        -- LSP semantic tokens (clangd): `@lsp.type.<token>.c`, these win over treesitter
        -- ["@lsp.type.macro.c"] = fg.purple,
        -- ["@lsp.type.property.c"] = fg.fg,

        -- legacy vim syntax, only used when treesitter isn't running for the buffer
        cInclude = fg.yellow,
        cStorageClass = fg.cyan,
        cTypedef = fg.orange,
        cDefine = fg.cyan,
        -- old treesitter names from before Neovim 0.8, these no longer do anything
        cTSInclude = fg.yellow,
        cTSConstant = fg.cyan,
        cTSConstMacro = fg.purple,
        cTSOperator = fg.red,
    }
end
