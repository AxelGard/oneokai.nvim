return function(c, cfg, fg)
    return {
        GitSignsAdd = fg.yellow,
        GitSignsAddLn = fg.yellow,
        GitSignsAddNr = fg.yellow,
        GitSignsChange = fg.green,
        GitSignsChangeLn = fg.green,
        GitSignsChangeNr = fg.green,
        GitSignsDelete = fg.orange,
        GitSignsDeleteLn = fg.orange,
        GitSignsDeleteNr = fg.orange
    }
end
