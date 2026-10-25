-- JSON
-- Uncomment and change an entry to style it for JSON only.
-- The commented values are what JSON gets from the general groups today.
-- Use `:Inspect` on a word to see which group is coloring it.
return function(c, cfg, fg)
    return {
        -- treesitter: `@capture.json`
        ["@property.json"] = fg.cyan,                                               -- keys
        -- ["@string.json"] = { link = "String" },                                  -- string values
        -- ["@string.escape.json"] = { fg = c.cyan, fmt = cfg.code_style.strings }, -- \n, \"
        -- ["@number.json"] = { link = "Number" },
        -- ["@boolean.json"] = { link = "Boolean" },                                -- true, false
        -- ["@constant.builtin.json"] = fg.purple,                                  -- null
        -- ["@punctuation.bracket.json"] = { link = "Delimiter" },                  -- { } [ ]
        -- ["@punctuation.delimiter.json"] = { link = "Delimiter" },                -- : ,
    }
end
