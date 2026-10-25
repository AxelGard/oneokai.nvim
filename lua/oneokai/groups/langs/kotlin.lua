-- Kotlin
-- Uncomment and change an entry to style it for Kotlin only.
-- The commented values are what Kotlin gets from the general groups today.
-- Use `:Inspect` on a word to see which group is coloring it.
return function(c, cfg, colors)
    return {
        -- treesitter: `@capture.kotlin`
        ["@attribute.kotlin"] = colors.Cyan,                                        -- @Composable, @JvmStatic
        -- ["@type.kotlin"] = colors.Blue,
        -- ["@type.builtin.kotlin"] = colors.Cyan,                                  -- Int, String, Unit
        -- ["@type.definition.kotlin"] = colors.Blue,                               -- typealias names
        -- ["@keyword.modifier.kotlin"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- val, var, private, data, sealed
        -- ["@keyword.function.kotlin"] = { fg = c.cyan, fmt = cfg.code_style.functions }, -- fun
        -- ["@keyword.type.kotlin"] = colors.Red,                                   -- class, object, interface
        -- ["@keyword.coroutine.kotlin"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- suspend
        -- ["@variable.member.kotlin"] = { fg = c.fg, fmt = cfg.code_style.variables }, -- properties
        -- ["@variable.parameter.kotlin"] = colors.Orange,
        -- ["@variable.builtin.kotlin"] = { fg = c.orange, fmt = cfg.code_style.variables }, -- this, super, it
        -- ["@function.kotlin"] = { fg = c.green, fmt = cfg.code_style.functions },
        -- ["@function.call.kotlin"] = { fg = c.green, fmt = cfg.code_style.functions },
        -- ["@function.builtin.kotlin"] = { fg = c.cyan, fmt = cfg.code_style.functions }, -- println, listOf
        -- ["@constructor.kotlin"] = { fg = c.green, fmt = "bold" },
        -- ["@module.kotlin"] = colors.Fg,                                          -- package names
        -- ["@label.kotlin"] = colors.Red,                                          -- return@forEach
        -- ["@punctuation.special.kotlin"] = colors.Red,                            -- ${ } in string templates
        -- ["@comment.documentation.kotlin"] = { fg = c.grey, fmt = cfg.code_style.comments }, -- /** kdoc */

        -- LSP semantic tokens (kotlin-language-server): `@lsp.type.<token>.kotlin`, these win over treesitter
        -- ["@lsp.type.property.kotlin"] = colors.Fg,

        -- legacy vim syntax, only used when treesitter isn't running for the buffer
        -- e.g. ktAnnotation, ktModifier, ktType, ktStructure, ktKeyword, ktSimpleInterpolation
    }
end
