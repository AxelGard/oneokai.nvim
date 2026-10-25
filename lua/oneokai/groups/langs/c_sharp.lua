-- C# / .NET
-- Uncomment and change an entry to style it for C# only.
-- The commented values are what C# gets from the general groups today.
-- Use `:Inspect` on a word to see which group is coloring it.
return function(c, cfg, fg)
    return {
        -- treesitter: `@capture.c_sharp`
        ["@attribute.c_sharp"] = fg.orange,                                         -- [HttpGet], [Serializable]
        -- ["@attribute.builtin.c_sharp"] = fg.cyan,                                -- built-in attributes (not covered by the line above)
        -- ["@type.c_sharp"] = { link = "Type" },                                   -- class/interface names
        -- ["@type.builtin.c_sharp"] = fg.cyan,                                     -- int, string, bool
        -- ["@type.definition.c_sharp"] = { link = "Type" },
        -- ["@module.c_sharp"] = fg.fg,                                             -- namespace names
        -- ["@keyword.modifier.c_sharp"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- public, static, readonly
        -- ["@keyword.type.c_sharp"] = fg.red,                                      -- class, record, struct
        -- ["@keyword.coroutine.c_sharp"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- async, await
        -- ["@keyword.import.c_sharp"] = fg.red,                                    -- using
        -- ["@keyword.directive.c_sharp"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- #region, #if
        -- ["@property.c_sharp"] = fg.fg,                                           -- properties
        -- ["@variable.member.c_sharp"] = { fg = c.fg, fmt = cfg.code_style.variables }, -- fields
        -- ["@variable.parameter.c_sharp"] = fg.orange,
        -- ["@variable.builtin.c_sharp"] = { fg = c.orange, fmt = cfg.code_style.variables }, -- this, base
        -- ["@function.method.c_sharp"] = { fg = c.green, fmt = cfg.code_style.functions },
        -- ["@function.method.call.c_sharp"] = { fg = c.green, fmt = cfg.code_style.functions },
        -- ["@constructor.c_sharp"] = { fg = c.green, fmt = "bold" },
        -- ["@comment.documentation.c_sharp"] = { fg = c.grey, fmt = cfg.code_style.comments }, -- /// docs

        -- LSP semantic tokens (OmniSharp / Roslyn): `@lsp.type.<token>.cs`, these win over treesitter
        -- ["@lsp.type.property.cs"] = fg.fg,
        -- ["@lsp.type.parameter.cs"] = fg.orange,
    }
end
