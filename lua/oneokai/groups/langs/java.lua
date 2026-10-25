-- Java
-- Uncomment and change an entry to style it for Java only.
-- The commented values are what Java gets from the general groups today.
-- Use `:Inspect` on a word to see which group is coloring it.
return function(c, cfg, fg)
    return {
        -- treesitter: `@capture.java`
        -- ["@attribute.java"] = fg.fg,                                         -- @Override, @Test
        -- ["@type.java"] = fg.blue,                                            -- class/interface names
        -- ["@type.builtin.java"] = fg.cyan,                                    -- int, boolean, void
        -- ["@keyword.modifier.java"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- public, static, final
        -- ["@keyword.type.java"] = fg.red,                                     -- class, interface, enum, record
        -- ["@keyword.return.java"] = { fg = c.red, fmt = cfg.code_style.keywords },
        -- ["@variable.member.java"] = { fg = c.fg, fmt = cfg.code_style.variables }, -- fields
        -- ["@variable.parameter.java"] = fg.orange,
        -- ["@variable.builtin.java"] = { fg = c.orange, fmt = cfg.code_style.variables }, -- this, super
        -- ["@function.method.java"] = { fg = c.green, fmt = cfg.code_style.functions },
        -- ["@function.method.call.java"] = { fg = c.green, fmt = cfg.code_style.functions },
        -- ["@constructor.java"] = { fg = c.green, fmt = "bold" },
        -- ["@constant.java"] = fg.purple,                                      -- ALL_CAPS names
        -- ["@comment.documentation.java"] = { fg = c.grey, fmt = cfg.code_style.comments }, -- /** javadoc */

        -- LSP semantic tokens (jdtls): `@lsp.type.<token>.java`, these win over treesitter
        -- ["@lsp.type.property.java"] = fg.fg,
        -- ["@lsp.type.parameter.java"] = fg.orange,

        -- legacy vim syntax, only used when treesitter isn't running for the buffer
        -- e.g. javaAnnotation, javaStorageClass, javaType, javaClassDecl, javaScopeDecl, javaMethodDecl
    }
end
