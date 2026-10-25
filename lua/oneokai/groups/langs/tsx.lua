-- TSX (React). Plain .ts files use the `typescript` parser, so use `.typescript` for those.
-- Uncomment and change an entry to style it for TSX only.
-- The commented values are what TSX gets from the general groups today.
-- Use `:Inspect` on a word to see which group is coloring it.
return function(c, cfg, fg)
    return {
        -- treesitter: `@capture.tsx`
        ["@tag.builtin.tsx"] = fg.red,                                              -- div, span (other languages get blue)
        ["@markup.raw.tsx"] = fg.fg,                                                -- text inside <code> stays plain
        ["@markup.heading.1.tsx"] = fg.fg,                                          -- text inside <h1> stays plain
        -- ["@tag.tsx"] = fg.red,                                                   -- <MyComponent>
        -- ["@tag.attribute.tsx"] = fg.green,                                       -- props: className, onClick
        -- ["@tag.delimiter.tsx"] = fg.fg,                                          -- < > </ />
        -- ["@type.tsx"] = { link = "Type" },
        -- ["@type.builtin.tsx"] = fg.cyan,                                         -- string, number, boolean
        -- ["@keyword.type.tsx"] = fg.red,                                          -- type, interface, enum
        -- ["@keyword.modifier.tsx"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- readonly, public, private
        -- ["@keyword.import.tsx"] = fg.red,                                        -- import, export, from
        -- ["@keyword.coroutine.tsx"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- async, await
        -- ["@keyword.function.tsx"] = { fg = c.cyan, fmt = cfg.code_style.functions }, -- function
        -- ["@variable.member.tsx"] = { fg = c.fg, fmt = cfg.code_style.variables }, -- obj.field
        -- ["@variable.parameter.tsx"] = fg.orange,
        -- ["@variable.builtin.tsx"] = { fg = c.orange, fmt = cfg.code_style.variables }, -- this, arguments
        -- ["@function.method.call.tsx"] = { fg = c.green, fmt = cfg.code_style.functions },
        -- ["@constructor.tsx"] = { fg = c.green, fmt = "bold" },
        -- ["@constant.builtin.tsx"] = fg.purple,                                   -- null, undefined
        -- ["@punctuation.special.tsx"] = fg.red,                                   -- ${ } in template strings

        -- LSP semantic tokens (ts_ls / vtsls): `@lsp.type.<token>.typescriptreact`, these win over treesitter
        -- ["@lsp.type.property.typescriptreact"] = fg.fg,
        -- ["@lsp.type.parameter.typescriptreact"] = fg.orange,
    }
end
