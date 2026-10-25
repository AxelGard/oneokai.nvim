-- Markdown (inline text like **bold** and `code` is parsed as `markdown_inline`, so use that suffix for those)
-- Uncomment and change an entry to style it for Markdown only.
-- The commented values are what Markdown gets from the general groups today.
-- Use `:Inspect` on a word to see which group is coloring it.
return function(c, cfg, colors)
    return {
        -- treesitter: `@capture.markdown`
        -- ["@markup.heading.1.markdown"] = colors.Red,                      -- # heading
        -- ["@markup.heading.2.markdown"] = colors.Red,                      -- ## heading
        -- ["@markup.heading.3.markdown"] = colors.Red,
        -- ["@markup.heading.4.markdown"] = colors.Red,
        -- ["@markup.heading.5.markdown"] = colors.Red,
        -- ["@markup.heading.6.markdown"] = colors.Red,
        -- ["@markup.list.markdown"] = colors.Cyan,                          -- - and 1. markers
        -- ["@markup.list.checked.markdown"] = colors.Cyan,                  -- [x]
        -- ["@markup.list.unchecked.markdown"] = colors.Cyan,                -- [ ]
        -- ["@markup.quote.markdown"] = colors.Cyan,                         -- > quotes
        -- ["@markup.raw.block.markdown"] = colors.Yellow,                   -- ``` code blocks
        -- ["@label.markdown"] = colors.Red,                                 -- language name after ```
        -- ["@punctuation.special.markdown"] = colors.Red,                   -- #, >, ---
        -- ["@markup.raw.markdown_inline"] = colors.Yellow,                  -- `inline code`
        -- ["@markup.strong.markdown_inline"] = { fg = c.fg, fmt = "bold" }, -- **bold**
        -- ["@markup.italic.markdown_inline"] = { fg = c.fg, fmt = "italic" }, -- *italic*
        -- ["@markup.strikethrough.markdown_inline"] = { fg = c.fg, fmt = "strikethrough" }, -- ~~strike~~
        -- ["@markup.link.label.markdown_inline"] = colors.Blue,             -- [link text]
        -- ["@markup.link.url.markdown_inline"] = { fg = c.cyan, fmt = "underline" }, -- (https://...)

        -- legacy vim syntax, only used when treesitter isn't running for the buffer
        markdownBlockquote = colors.Grey,
        markdownBold = { fg = c.none, fmt = "bold" },
        markdownBoldDelimiter = colors.Grey,
        markdownCode = colors.Yellow,
        markdownCodeBlock = colors.Yellow,
        markdownCodeDelimiter = colors.Yellow,
        markdownH1 = { fg = c.orange, fmt = "bold" },
        markdownH2 = { fg = c.orange, fmt = "bold" },
        markdownH3 = { fg = c.purple, fmt = "bold" },
        markdownH4 = { fg = c.orange, fmt = "bold" },
        markdownH5 = { fg = c.orange, fmt = "bold" },
        markdownH6 = { fg = c.purple, fmt = "bold" },
        markdownHeadingDelimiter = colors.Grey,
        markdownHeadingRule = colors.Grey,
        markdownId = colors.Yellow,
        markdownIdDeclaration = colors.Orange,
        markdownItalic = { fg = c.none, fmt = "italic" },
        markdownItalicDelimiter = { fg = c.grey, fmt = "italic" },
        markdownLinkDelimiter = colors.Grey,
        markdownLinkText = colors.Orange,
        markdownLinkTextDelimiter = colors.Grey,
        markdownListMarker = colors.Orange,
        markdownOrderedListMarker = colors.Orange,
        markdownRule = colors.Orange,
        markdownUrl = { fg = c.green, fmt = "underline" },
        markdownUrlDelimiter = colors.Grey,
        markdownUrlTitleDelimiter = colors.Yellow,
    }
end
