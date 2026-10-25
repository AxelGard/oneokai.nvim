-- Bash / sh
-- Uncomment and change an entry to style it for Bash only.
-- The commented values are what Bash gets from the general groups today.
-- Use `:Inspect` on a word to see which group is coloring it.
return function(c, cfg, fg)
    return {
        -- treesitter: `@capture.bash`
        ["@variable.parameter.bash"] = fg.fg,                                       -- command arguments, e.g. -la in `ls -la`, and case values
        -- ["@function.call.bash"] = { fg = c.green, fmt = cfg.code_style.functions }, -- commands: git, grep
        -- ["@function.builtin.bash"] = { fg = c.cyan, fmt = cfg.code_style.functions }, -- echo, cd, export
        -- ["@function.bash"] = { fg = c.green, fmt = cfg.code_style.functions },   -- function definitions
        -- ["@variable.bash"] = { link = "Identifier" },                            -- $name
        -- ["@variable.builtin.bash"] = { fg = c.orange, fmt = cfg.code_style.variables }, -- HOME, PATH, UID
        -- ["@constant.bash"] = fg.purple,                                          -- ALL_CAPS variable names, $1, $?, $@
        -- ["@punctuation.special.bash"] = fg.red,                                  -- $ and ${ }
        -- ["@string.bash"] = { link = "String" },
        -- ["@string.special.path.bash"] = fg.red,                                  -- redirect targets: > out.txt
        -- ["@keyword.conditional.bash"] = { link = "Conditional" },                -- if, then, fi, case
        -- ["@keyword.repeat.bash"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- for, while, do, done
        -- ["@keyword.function.bash"] = { fg = c.cyan, fmt = cfg.code_style.functions }, -- function
        -- ["@keyword.directive.bash"] = { fg = c.red, fmt = cfg.code_style.keywords }, -- #!/bin/bash
        -- ["@operator.bash"] = { link = "Operator" },                              -- |, &&, >

        -- legacy vim syntax, only used when treesitter isn't running for the buffer
        -- e.g. shCommandSub, shDeref, shVariable, shStatement, shQuote
    }
end
