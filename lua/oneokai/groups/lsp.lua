local util = require("oneokai.util")

return function(c, cfg, colors)
    local diagnostics_error_color = cfg.diagnostics.darker and c.red or c.red
    local diagnostics_hint_color = cfg.diagnostics.darker and c.dark_orange or c.orange
    local diagnostics_warn_color = cfg.diagnostics.darker and c.dark_yellow or c.yellow
    local diagnostics_info_color = cfg.diagnostics.darker and c.dark_cyan or c.cyan

    local groups = {
        LspCxxHlGroupEnumConstant = colors.Purple,
        LspCxxHlGroupMemberVariable = colors.Purple,
        LspCxxHlGroupNamespace = colors.Green,
        LspCxxHlSkippedRegion = colors.Grey,
        LspCxxHlSkippedRegionBeginEnd = colors.Orange,

        DiagnosticError = { fg = c.red },
        DiagnosticHint = { fg = c.orange },
        DiagnosticInfo = { fg = c.blue },
        DiagnosticWarn = { fg = c.yellow },

        DiagnosticVirtualTextError = {
            bg = cfg.diagnostics.background and util.darken(diagnostics_error_color, 0.1, c.bg0) or c.none,
            fg = diagnostics_error_color
        },
        DiagnosticVirtualTextWarn = {
            bg = cfg.diagnostics.background and util.darken(diagnostics_warn_color, 0.1, c.bg0) or c.none,
            fg = diagnostics_warn_color
        },
        DiagnosticVirtualTextInfo = {
            bg = cfg.diagnostics.background and util.darken(diagnostics_info_color, 0.1, c.bg0) or c.none,
            fg = diagnostics_info_color
        },
        DiagnosticVirtualTextHint = {
            bg = cfg.diagnostics.background and util.darken(diagnostics_hint_color, 0.1, c.bg0) or c.none,
            fg = diagnostics_hint_color
        },

        DiagnosticUnderlineError = { fmt = cfg.diagnostics.undercurl and "undercurl" or "underline", sp = c.red },
        DiagnosticUnderlineHint = { fmt = cfg.diagnostics.undercurl and "undercurl" or "underline", sp = c.orange },
        DiagnosticUnderlineInfo = { fmt = cfg.diagnostics.undercurl and "undercurl" or "underline", sp = c.blue },
        DiagnosticUnderlineWarn = { fmt = cfg.diagnostics.undercurl and "undercurl" or "underline", sp = c.yellow },

        LspReferenceText = { bg = c.bg2 },
        LspReferenceWrite = { bg = c.bg2 },
        LspReferenceRead = { bg = c.bg2 },

        LspCodeLens = { fg = c.grey, fmt = cfg.code_style.comments },
        LspCodeLensSeparator = { fg = c.grey },
    }

    -- legacy names from before Neovim 0.6
    local legacy = {
        LspDiagnosticsDefaultError = { link = "DiagnosticError" },
        LspDiagnosticsDefaultHint = { link = "DiagnosticHint" },
        LspDiagnosticsDefaultInformation = { link = "DiagnosticInfo" },
        LspDiagnosticsDefaultWarning = { link = "DiagnosticWarn" },
        LspDiagnosticsUnderlineError = { link = "DiagnosticUnderlineError" },
        LspDiagnosticsUnderlineHint = { link = "DiagnosticUnderlineHint" },
        LspDiagnosticsUnderlineInformation = { link = "DiagnosticUnderlineInfo" },
        LspDiagnosticsUnderlineWarning = { link = "DiagnosticUnderlineWarn" },
        LspDiagnosticsVirtualTextError = { link = "DiagnosticVirtualTextError" },
        LspDiagnosticsVirtualTextWarning = { link = "DiagnosticVirtualTextWarn" },
        LspDiagnosticsVirtualTextInformation = { link = "DiagnosticVirtualTextInfo" },
        LspDiagnosticsVirtualTextHint = { link = "DiagnosticVirtualTextHint" },
    }

    return vim.tbl_extend("force", groups, legacy)
end
