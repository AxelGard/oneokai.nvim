-- C
-- Uncomment and change an entry to style it for C only.
-- The commented values are what C gets from the general groups today.
-- Use `:Inspect` on a word to see which group is coloring it.
return function(c, cfg, colors)
    return {
        -- treesitter: `@capture.c`
        -- ["@keyword.import.c"] = colors.Red,                               -- #include
        -- ["@keyword.directive.c"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- #if, #ifdef, #pragma
        -- ["@keyword.directive.define.c"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- #define
        -- ["@constant.macro.c"] = colors.Purple,                            -- macro names
        -- ["@function.macro.c"] = { fg = c.cyan, fmt = cfg.code_style.functions }, -- function-like macros
        -- ["@keyword.modifier.c"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- static, const, extern
        -- ["@keyword.type.c"] = colors.Red,                                 -- struct, enum, union
        -- ["@type.c"] = colors.Blue,
        -- ["@type.builtin.c"] = colors.Cyan,                                -- int, char, void
        -- ["@type.definition.c"] = colors.Blue,                             -- typedef names
        -- ["@property.c"] = colors.Fg,                                      -- struct fields
        -- ["@variable.parameter.c"] = colors.Orange,
        -- ["@function.call.c"] = { fg = c.green, fmt = cfg.code_style.functions },
        -- ["@constant.c"] = colors.Purple,                                  -- ALL_CAPS names
        -- ["@label.c"] = colors.Red,                                        -- goto labels
        -- ["@string.escape.c"] = { fg = c.cyan, fmt = cfg.code_style.strings }, -- \n, \t

        -- LSP semantic tokens (clangd): `@lsp.type.<token>.c`, these win over treesitter
        -- ["@lsp.type.macro.c"] = colors.Purple,
        -- ["@lsp.type.property.c"] = colors.Fg,

        -- legacy vim syntax, only used when treesitter isn't running for the buffer
        cInclude = colors.Yellow,
        cStorageClass = colors.Cyan,
        cTypedef = colors.Orange,
        cDefine = colors.Cyan,
        -- old treesitter names from before Neovim 0.8, these no longer do anything
        cTSInclude = colors.Yellow,
        cTSConstant = colors.Cyan,
        cTSConstMacro = colors.Purple,
        cTSOperator = colors.Red,
    }
end
