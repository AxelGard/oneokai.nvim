-- Markdown (inline text like **bold** and `code` is parsed as `markdown_inline`, so use that suffix for those)
-- Uncomment and change an entry to style it for Markdown only.
-- The commented values are what Markdown gets from the general groups today.
-- Use `:Inspect` on a word to see which group is coloring it.
return function(c, cfg, fg)
    return {
        -- treesitter: `@capture.markdown`
        -- ["@markup.heading.1.markdown"] = fg.red,                      -- # heading
        -- ["@markup.heading.2.markdown"] = fg.red,                      -- ## heading
        -- ["@markup.heading.3.markdown"] = fg.red,
        -- ["@markup.heading.4.markdown"] = fg.red,
        -- ["@markup.heading.5.markdown"] = fg.red,
        -- ["@markup.heading.6.markdown"] = fg.red,
        -- ["@markup.list.markdown"] = fg.cyan,                          -- - and 1. markers
        -- ["@markup.list.checked.markdown"] = fg.cyan,                  -- [x]
        -- ["@markup.list.unchecked.markdown"] = fg.cyan,                -- [ ]
        -- ["@markup.quote.markdown"] = fg.cyan,                         -- > quotes
        -- ["@markup.raw.block.markdown"] = fg.yellow,                   -- ``` code blocks
        -- ["@label.markdown"] = fg.red,                                 -- language name after ```
        -- ["@punctuation.special.markdown"] = fg.red,                   -- #, >, ---
        -- ["@markup.raw.markdown_inline"] = fg.yellow,                  -- `inline code`
        -- ["@markup.strong.markdown_inline"] = { fg = c.fg, fmt = "bold" }, -- **bold**
        -- ["@markup.italic.markdown_inline"] = { fg = c.fg, fmt = "italic" }, -- *italic*
        -- ["@markup.strikethrough.markdown_inline"] = { fg = c.fg, fmt = "strikethrough" }, -- ~~strike~~
        -- ["@markup.link.label.markdown_inline"] = fg.blue,             -- [link text]
        -- ["@markup.link.url.markdown_inline"] = { fg = c.cyan, fmt = "underline" }, -- (https://...)

        -- legacy vim syntax, only used when treesitter isn't running for the buffer
        markdownBlockquote = fg.grey,
        markdownBold = { fg = c.none, fmt = "bold" },
        markdownBoldDelimiter = fg.grey,
        markdownCode = fg.yellow,
        markdownCodeBlock = fg.yellow,
        markdownCodeDelimiter = fg.yellow,
        markdownH1 = { fg = c.orange, fmt = "bold" },
        markdownH2 = { fg = c.orange, fmt = "bold" },
        markdownH3 = { fg = c.purple, fmt = "bold" },
        markdownH4 = { fg = c.orange, fmt = "bold" },
        markdownH5 = { fg = c.orange, fmt = "bold" },
        markdownH6 = { fg = c.purple, fmt = "bold" },
        markdownHeadingDelimiter = fg.grey,
        markdownHeadingRule = fg.grey,
        markdownId = fg.yellow,
        markdownIdDeclaration = fg.orange,
        markdownItalic = { fg = c.none, fmt = "italic" },
        markdownItalicDelimiter = { fg = c.grey, fmt = "italic" },
        markdownLinkDelimiter = fg.grey,
        markdownLinkText = fg.orange,
        markdownLinkTextDelimiter = fg.grey,
        markdownListMarker = fg.orange,
        markdownOrderedListMarker = fg.orange,
        markdownRule = fg.orange,
        markdownUrl = { fg = c.green, fmt = "underline" },
        markdownUrlDelimiter = fg.grey,
        markdownUrlTitleDelimiter = fg.yellow,
    }
end
