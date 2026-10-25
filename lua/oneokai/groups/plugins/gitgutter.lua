return function(c, cfg, fg)
    return {
        GitGutterAdd = { fg = c.yellow },
        GitGutterChange = { fg = c.green },
        GitGutterDelete = { fg = c.orange },
    }
end
