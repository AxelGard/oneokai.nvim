-- HTML
-- Uncomment and change an entry to style it for HTML only.
-- The commented values are what HTML gets from the general groups today.
-- Use `:Inspect` on a word to see which group is coloring it.
return function(c, cfg, colors)
    return {
        -- treesitter: `@capture.html`
        -- ["@tag.html"] = colors.Red,                                       -- div, span
        -- ["@tag.attribute.html"] = colors.Green,                           -- class, href
        -- ["@tag.delimiter.html"] = colors.Fg,                              -- < > </ />
        -- ["@string.html"] = { fg = c.yellow, fmt = cfg.code_style.strings }, -- attribute values
        -- ["@constant.html"] = colors.Purple,                               -- <!DOCTYPE html>
        -- ["@character.special.html"] = colors.Red,                         -- &amp; &nbsp;
        -- ["@comment.html"] = { fg = c.grey, fmt = cfg.code_style.comments },
        -- ["@markup.heading.html"] = colors.Red,                            -- text inside <h1>..<h6>
        -- ["@markup.link.label.html"] = colors.Blue,                        -- text inside <a>
        -- ["@markup.strong.html"] = { fg = c.fg, fmt = "bold" },            -- <strong>, <b>
        -- ["@markup.italic.html"] = { fg = c.fg, fmt = "italic" },          -- <em>, <i>

        -- legacy vim syntax, only used when treesitter isn't running for the buffer
        htmlTag = colors.Fg,
        htmlEndTag = colors.Fg,
        htmlTagName = colors.Red,
        htmlArg = colors.Yellow,
        htmlScriptTag = colors.Red,
        htmlSpecialTagName = colors.Purple,
        htmlString = colors.Yellow,
        htmlValue = colors.Green,
        htmlComment = { fg = c.grey, fmt = cfg.code_style.comments },
        htmlBold = { fg = c.none, fmt = "bold" },
        htmlItalic = { fg = c.none, fmt = "italic" },
    }
end
