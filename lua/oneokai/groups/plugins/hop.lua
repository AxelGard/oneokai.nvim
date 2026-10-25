local util = require("oneokai.util")

return function(c, cfg, fg)
    return {
        HopNextKey = { fg = c.orange, fmt = "bold" },
        HopNextKey1 = { fg = c.cyan, fmt = "bold" },
        HopNextKey2 = { fg = util.darken(c.green, 0.7) },
        HopUnmatched = fg.grey,
    }
end
