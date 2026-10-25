-- HTML
-- Uncomment and change an entry to style it for HTML only.
-- The commented values are what HTML gets from the general groups today.
-- Use `:Inspect` on a word to see which group is coloring it.
return function(c, cfg, fg)
    return {
        -- treesitter: `@capture.html`
        -- ["@tag.html"] = fg.red,                                       -- div, span
        -- ["@tag.attribute.html"] = fg.green,                           -- class, href
        -- ["@tag.delimiter.html"] = fg.fg,                              -- < > </ />
        -- ["@string.html"] = { fg = c.yellow, fmt = cfg.code_style.strings }, -- attribute values
        -- ["@constant.html"] = fg.purple,                               -- <!DOCTYPE html>
        -- ["@character.special.html"] = fg.red,                         -- &amp; &nbsp;
        -- ["@comment.html"] = { fg = c.grey, fmt = cfg.code_style.comments },
        -- ["@markup.heading.html"] = fg.red,                            -- text inside <h1>..<h6>
        -- ["@markup.link.label.html"] = fg.blue,                        -- text inside <a>
        -- ["@markup.strong.html"] = { fg = c.fg, fmt = "bold" },            -- <strong>, <b>
        -- ["@markup.italic.html"] = { fg = c.fg, fmt = "italic" },          -- <em>, <i>

        -- legacy vim syntax, only used when treesitter isn't running for the buffer
        htmlTag = fg.fg,
        htmlEndTag = fg.fg,
        htmlTagName = fg.red,
        htmlArg = fg.yellow,
        htmlScriptTag = fg.red,
        htmlSpecialTagName = fg.purple,
        htmlString = fg.yellow,
        htmlValue = fg.green,
        htmlComment = { fg = c.grey, fmt = cfg.code_style.comments },
        htmlBold = { fg = c.none, fmt = "bold" },
        htmlItalic = { fg = c.none, fmt = "italic" },
    }
end
