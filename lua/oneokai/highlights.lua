local c = require('oneokai.colors')
local cfg = vim.g.oneokai_config
local util = require("oneokai.util")

local M = {}
local hl = {langs = {}, plugins = {}}

local function vim_highlights(highlights)
    for group_name, group_settings in pairs(highlights) do
        vim.api.nvim_command(string.format("highlight %s guifg=%s guibg=%s guisp=%s gui=%s", group_name,
            group_settings.fg or "none",
            group_settings.bg or "none",
            group_settings.sp or "none",
            group_settings.fmt or "none"))
    end
end

local colors = {
    Fg = {fg = c.fg},
    LightGrey = {fg = c.light_grey},
    Grey = {fg = c.grey},
    Red = {fg = c.red},
    Cyan = {fg = c.cyan},
    Yellow = {fg = c.yellow},
    Orange = {fg = c.orange},
    Green = {fg = c.green},
    Blue = {fg = c.blue},
    Purple = {fg = c.purple}
}

hl.common = {
    Normal = {fg = c.fg, bg = cfg.transparent and c.none or c.bg0},
    Terminal = {fg = c.fg, bg = cfg.transparent and c.none or c.bg0},
    EndOfBuffer = {fg = cfg.ending_tildes and c.bg2 or c.bg0, bg = cfg.transparent and c.none or c.bg0},
    FoldColumn = {fg = c.fg, bg = cfg.transparent and c.none or c.bg1},
    Folded = {fg = c.fg, bg = cfg.transparent and c.none or c.bg1},
    SignColumn = {fg = c.fg, bg = cfg.transparent and c.none or c.bg0},
    ToolbarLine = {fg = c.fg},
    Cursor = {fmt = "reverse"},
    vCursor = {fmt = "reverse"},
    iCursor = {fmt = "reverse"},
    lCursor = {fmt = "reverse"},
    CursorIM = {fmt = "reverse"},
    CursorColumn = {bg = c.bg1},
    CursorLine = {bg = c.bg1},
    ColorColumn = {bg = c.bg1},
    CursorLineNr = {fg = c.fg},
    LineNr = {fg = c.grey},
    Conceal = {fg = c.grey, bg = c.bg1},
    DiffAdd = {fg = c.none, bg = c.diff_add},
    DiffChange = {fg = c.none, bg = c.diff_change},
    DiffDelete = {fg = c.none, bg = c.diff_delete},
    DiffText = {fg = c.none, bg= c.diff_text},
    DiffAdded = colors.Yellow,
    DiffRemoved = colors.Red,
    DiffFile = colors.Cyan,
    DiffIndexLine = colors.Grey,
    Directory = {fg = c.green},
    ErrorMsg = {fg = c.Red, fmt = "bold"},
    WarningMsg = {fg = c.yellow, fmt = "bold"},
    MoreMsg = {fg = c.green, fmt = "bold"},
    IncSearch = {fg = c.bg0, bg = c.purple},
    Search = {fg = c.bg0, bg = c.bg_yellow},
    Substitute = {fg = c.bg0, bg = c.yellow},
    MatchParen = {fg = c.none, bg = c.grey},
    NonText = {fg = c.grey},
    Whitespace = {fg = c.grey},
    SpecialKey = {fg = c.grey},
    Pmenu = {fg = c.fg, bg = c.bg1},
    PmenuSbar = {fg = c.none, bg = c.bg1},
    PmenuSel = {fg = c.bg0, bg = c.bg_blue},
    WildMenu = {fg = c.bg0, bg = c.green},
    PmenuThumb = {fg = c.none, bg = c.grey},
    Question = {fg = c.yellow},
    SpellBad = {fg = c.orange, fmt = "underline", sp = c.orange},
    SpellCap = {fg = c.yellow, fmt = "underline", sp = c.yellow},
    SpellLocal = {fg = c.green, fmt = "underline", sp = c.green},
    SpellRare = {fg = c.orange, fmt = "underline", sp = c.orange},
    StatusLine = {fg = c.fg, bg = c.bg2},
    StatusLineTerm = {fg = c.fg, bg = c.bg2},
    StatusLineNC = {fg = c.grey, bg = c.bg1},
    StatusLineTermNC = {fg = c.grey, bg = c.bg1},
    TabLine = {fg = c.fg, bg = c.bg1},
    TabLineFill = {fg = c.grey, bg = c.bg1},
    TabLineSel =  {fg = c.bg0, bg = c.fg},
    VertSplit = {fg = c.bg3},
    Visual = {bg = c.bg3},
    VisualNOS = {fg = c.none, bg = c.bg2, fmt = "underline"},
    QuickFixLine = {fg = c.green, fmt = "underline"},
    Debug = {fg = c.yellow},
    debugPC = {fg = c.bg0, bg = c.yellow},
    debugBreakpoint = {fg = c.bg0, bg = c.orange},
    ToolbarButton = {fg = c.bg0, bg = c.bg_blue},
    FloatBorder = {fg = c.grey, bg = c.bg1},
    NormalFloat = {fg = c.fg, bg = c.bg1},
}

hl.syntax = {
    String = {fg = c.yellow, fmt = cfg.code_style.strings},
    Character = colors.Purple,
    Number = colors.Purple,
    Float = colors.Purple,
    Boolean = colors.Purple,
    Type = colors.Yellow,
    Structure = colors.Yellow,
    StorageClass = colors.blue,
    Identifier = {fg = c.fg, fmt = cfg.code_style.variables},
    Constant = colors.Cyan,
    PreProc = colors.Orange,
    PreCondit = colors.Orange,
    Include = colors.Red,
    Keyword = {fg = c.red, fmt = cfg.code_style.keywords},
    Define = colors.Orange,
    Typedef = colors.Orange,
    Exception = colors.Red,
    Conditional = {fg = c.red, fmt = cfg.code_style.keywords},
    Repeat = {fg = c.orange, fmt = cfg.code_style.keywords},
    Statement = colors.LightGrey,
    Macro = colors.Orange,
    Error = colors.Red,
    Label = colors.LightGrey,
    Special = colors.Cyan,
    SpecialChar = colors.Red,
    Function = {fg = c.green, fmt = cfg.code_style.functions},
    Operator = colors.Red,
    Title = colors.Cyan,
    Tag = colors.Yellow,
    Delimiter = colors.LightGrey,
    Comment = {fg = c.grey, fmt = cfg.code_style.comments},
    SpecialComment = {fg = c.grey, fmt = cfg.code_style.comments},
    Todo = {fg = c.orange, fmt = cfg.code_style.comments}
}

if vim.api.nvim_call_function("has", { "nvim-0.8" }) == 1 then
    hl.treesitter = {
        ["@annotation"] = colors.Fg,
        ["@attribute"] = colors.Fg,
        ["@boolean"] = colors.Purple,
        ["@character"] = colors.Purple,
        ["@comment"] = {fg = c.grey, fmt = cfg.code_style.comments},
        ["@conditional"] = {fg = c.red, fmt = cfg.code_style.keywords},
        ["@constant"] = colors.Purple,
        ["@constant.builtin"] = colors.Purple,
        ["@constant.macro"] = colors.Purple,
        ["@constructor"] = {fg = c.green, fmt = "bold"},
        ["@error"] = colors.Red,
        ["@exception"] = colors.Red,
        ["@field"] = colors.Fg,
        ["@float"] = colors.Purple,
        ["@function"] = {fg = c.green, fmt = cfg.code_style.functions},
        ["@function.builtin"] = {fg = c.cyan, fmt = cfg.code_style.functions},
        ["@function.macro"] = {fg = c.cyan, fmt = cfg.code_style.functions},
        ["@include"] = colors.Red,
        ["@keyword"] = {fg = c.red, fmt = cfg.code_style.keywords},
        ["@keyword.function"] = {fg = c.cyan, fmt = cfg.code_style.functions},
        ["@keyword.operator"] =  {fg = c.red, fmt = cfg.code_style.keywords},
        ["@label"] = colors.Red,
        ["@method"] = colors.Green,
        ["@namespace"] = colors.Fg,
        ["@none"] = colors.Cyan,
        ["@number"] = colors.Purple,
        ["@operator"] = colors.Red,
        ["@parameter"] = colors.Fg,
        ["@parameter.reference"] = colors.Fg,
        ["@property"] = colors.Fg,
        ["@punctuation.delimiter"] = colors.LightGrey,
        ["@punctuation.bracket"] = colors.LightGrey,
        ["@punctuation.special"] = colors.Red,
        ["@repeat"] = {fg = c.red, fmt = cfg.code_style.keywords},
        ["@string"] = {fg = c.yellow, fmt = cfg.code_style.strings},
        ["@string.regex"] = {fg = c.purple, fmt = cfg.code_style.strings},
        ["@string.escape"] = {fg = c.cyan, fmt = cfg.code_style.strings},
        ["@symbol"] = colors.Fg,
        ["@tag"] = colors.Orange,
        ["@tag.attribute"] = colors.Yellow,
        ["@tag.delimiter"] = colors.Orange,
        ["@text"] = colors.Fg,
        ["@text.strong"] = {fg = c.fg, fmt = 'bold'},
        ["@text.emphasis"] = {fg = c.fg, fmt = 'italic'},
        ["@text.underline"] = {fg = c.fg, fmt = 'underline'},
        ["@text.strike"] = {fg = c.fg, fmt = 'strikethrough'},
        ["@text.title"] = {fg = c.purple, fmt = 'bold'},
        ["@text.literal"] = colors.Yellow,
        ["@text.uri"] = {fg = c.cyan, fmt = 'underline'},
        ["@text.todo"] = {fg = c.orange, fmt = cfg.code_style.comments},
        ["@text.math"] = colors.Fg,
        ["@text.reference"] = colors.Green,
        ["@text.environment"] = colors.Fg,
        ["@text.environment.name"] = colors.Fg,
        ["@text.diff.add"] = colors.Yellow,
        ["@text.diff.delete"] = colors.Orange,
        ["@note"] = colors.Fg,
        ["@warning"] = colors.Yellow,
        ["@danger"] = colors.Red,
        ["@type"] = colors.Blue,
        ["@type.builtin"] = colors.Cyan,
        ["@variable"] = {fg = c.fg, fmt = cfg.code_style.variables},
        ["@variable.builtin"] = {fg = c.orange, fmt = cfg.code_style.variables},
    }
else
    hl.treesitter = {
        TSAnnotation = colors.Fg,
        TSAttribute = colors.Fg,
        TSBoolean = colors.Purple,
        TSCharacter = colors.Purple,
        TSComment = {fg = c.grey, fmt = cfg.code_style.comments},
        TSConditional = {fg = c.red, fmt = cfg.code_style.keywords},
        TSConstant = colors.Purple,
        TSConstBuiltin = colors.Purple,
        TSConstMacro = colors.Purple,
        TSConstructor = {fg = c.green, fmt = "bold"},
        TSError = colors.Fg,
        TSException = colors.Orange,
        TSField = colors.Cyan,
        TSFloat = colors.Purple,
        TSFunction = {fg = c.green, fmt = cfg.code_style.functions},
        TSFuncBuiltin = {fg = c.cyan, fmt = cfg.code_style.functions},
        TSFuncMacro = {fg = c.cyan, fmt = cfg.code_style.functions},
        TSInclude = colors.red,
        TSKeyword = {fg = c.red, fmt = cfg.code_style.keywords},
        TSKeywordFunction = {fg = c.red, fmt = cfg.code_style.functions},
        TSKeywordOperator =  {fg = c.red, fmt = cfg.code_style.keywords},
        TSLabel = colors.Orange,
        TSMethod = colors.Green,
        TSNamespace = colors.Blue,
        TSNone = colors.Fg,
        TSNumber = colors.Purple,
        TSOperator = colors.Fg,
        TSParameter = colors.Orange,
        TSParameterReference = colors.Fg,
        TSProperty = colors.Fg,
        TSPunctDelimiter = colors.LightGrey,
        TSPunctBracket = colors.LightGrey,
        TSPunctSpecial = colors.Orange,
        TSRepeat = {fg = c.orange, fmt = cfg.code_style.keywords},
        TSString = {fg = c.yellow, fmt = cfg.code_style.strings},
        TSStringRegex = {fg = c.purple, fmt = cfg.code_style.strings},
        TSStringEscape = {fg = c.orange, fmt = cfg.code_style.strings},
        TSSymbol = colors.Fg,
        TSTag = colors.Orange,
        TSTagDelimiter = colors.Orange,
        TSText = colors.Fg,
        TSStrong = {fg = c.fg, fmt = 'bold'},
        TSEmphasis = {fg = c.fg, fmt = 'italic'},
        TSUnderline = {fg = c.fg, fmt = 'underline'},
        TSStrike = {fg = c.fg, fmt = 'strikethrough'},
        TSTitle = {fg = c.purple, fmt = 'bold'},
        TSLiteral = colors.Yellow,
        TSURI = {fg = c.cyan, fmt = 'underline'},
        TSMath = colors.Fg,
        TSTextReference = colors.Green,
        TSEnviroment = colors.Fg,
        TSEnviromentName = colors.Fg,
        TSNote = colors.Fg,
        TSWarning = colors.Fg,
        TSDanger = colors.Fg,
        TSType = colors.Blue,
        TSTypeBuiltin = colors.Cyan,
        TSVariable = {fg = c.fg, fmt = cfg.code_style.variables},
        TSVariableBuiltin = {fg = c.orange, fmt = cfg.code_style.variables},
    }
end

local diagnostics_error_color = cfg.diagnostics.darker and c.orange or c.orange
local diagnostics_hint_color = cfg.diagnostics.darker and c.dark_red or c.orange
local diagnostics_warn_color = cfg.diagnostics.darker and c.dark_yellow or c.yellow
local diagnostics_info_color = cfg.diagnostics.darker and c.dark_cyan or c.cyan
hl.plugins.lsp = {
    LspCxxHlGroupEnumConstant = colors.Purple,
    LspCxxHlGroupMemberVariable = colors.Purple,
    LspCxxHlGroupNamespace = colors.Green,
    LspCxxHlSkippedRegion = colors.Grey,
    LspCxxHlSkippedRegionBeginEnd = colors.Orange,

    DiagnosticError = {fg = c.orange},
    DiagnosticHint = {fg = c.orange},
    DiagnosticInfo = {fg = c.cyan},
    DiagnosticWarn = {fg = c.yellow},

    DiagnosticVirtualTextError = { bg = cfg.diagnostics.background and util.darken(diagnostics_error_color, 0.1, c.bg0) or c.none,
                                   fg = diagnostics_error_color },
    DiagnosticVirtualTextWarn = { bg = cfg.diagnostics.background and util.darken(diagnostics_warn_color, 0.1, c.bg0) or c.none,
                                  fg = diagnostics_warn_color },
    DiagnosticVirtualTextInfo = { bg = cfg.diagnostics.background and util.darken(diagnostics_info_color, 0.1, c.bg0) or c.none,
                                  fg = diagnostics_info_color },
    DiagnosticVirtualTextHint = { bg = cfg.diagnostics.background and util.darken(diagnostics_hint_color, 0.1, c.bg0) or c.none,
                                  fg = diagnostics_hint_color },

    DiagnosticUnderlineError = {fmt = cfg.diagnostics.undercurl and "undercurl" or "underline", sp = c.orange},
    DiagnosticUnderlineHint = {fmt = cfg.diagnostics.undercurl and "undercurl" or "underline", sp = c.orange},
    DiagnosticUnderlineInfo = {fmt = cfg.diagnostics.undercurl and "undercurl" or "underline", sp = c.green},
    DiagnosticUnderlineWarn = {fmt = cfg.diagnostics.undercurl and "undercurl" or "underline", sp = c.yellow},

    LspReferenceText = { bg = c.bg2 },
    LspReferenceWrite = { bg = c.bg2 },
    LspReferenceRead = { bg = c.bg2 },

    LspCodeLens = { fg = c.grey, fmt = cfg.code_style.comments },
    LspCodeLensSeparator = { fg = c.grey },
}

hl.plugins.lsp.LspDiagnosticsDefaultError = hl.plugins.lsp.DiagnosticError
hl.plugins.lsp.LspDiagnosticsDefaultHint = hl.plugins.lsp.DiagnosticHint
hl.plugins.lsp.LspDiagnosticsDefaultInformation = hl.plugins.lsp.DiagnosticInfo
hl.plugins.lsp.LspDiagnosticsDefaultWarning = hl.plugins.lsp.DiagnosticWarn
hl.plugins.lsp.LspDiagnosticsUnderlineError = hl.plugins.lsp.DiagnosticUnderlineError
hl.plugins.lsp.LspDiagnosticsUnderlineHint = hl.plugins.lsp.DiagnosticUnderlineHint
hl.plugins.lsp.LspDiagnosticsUnderlineInformation = hl.plugins.lsp.DiagnosticUnderlineInfo
hl.plugins.lsp.LspDiagnosticsUnderlineWarning = hl.plugins.lsp.DiagnosticUnderlineWarn
hl.plugins.lsp.LspDiagnosticsVirtualTextError = hl.plugins.lsp.DiagnosticVirtualTextError
hl.plugins.lsp.LspDiagnosticsVirtualTextWarning = hl.plugins.lsp.DiagnosticVirtualTextWarn
hl.plugins.lsp.LspDiagnosticsVirtualTextInformation = hl.plugins.lsp.DiagnosticVirtualTextInfo
hl.plugins.lsp.LspDiagnosticsVirtualTextHint = hl.plugins.lsp.DiagnosticVirtualTextHint

hl.plugins.ale = {
    ALEErrorSign = hl.plugins.lsp.DiagnosticError,
    ALEInfoSign = hl.plugins.lsp.DiagnosticInfo,
    ALEWarningSign = hl.plugins.lsp.DiagnosticWarn,
}

hl.plugins.barbar = {
    BufferCurrent = { fmt = "bold" },
    BufferCurrentMod = { fg = c.purple, fmt = "bold,italic" },
    BufferCurrentSign = { fg = c.orange },
    BufferInactiveMod = { fg = c.light_grey, bg = c.bg1, fmt = "italic" },
    BufferVisible = { fg = c.light_grey, bg = c.bg0 },
    BufferVisibleMod = { fg = c.yellow, bg = c.bg0, fmt = "italic" },
    BufferVisibleIndex = { fg = c.light_grey, bg = c.bg0 },
    BufferVisibleSign = { fg = c.light_grey, bg = c.bg0 },
    BufferVisibleTarget = { fg = c.light_grey, bg = c.bg0 },
}

hl.plugins.cmp = {
    CmpItemAbbr = colors.Fg,
    CmpItemAbbrDeprecated = { fg = c.light_grey, fmt = "strikethrough" },
    CmpItemAbbrMatch = colors.Cyan,
    CmpItemAbbrMatchFuzzy = { fg = c.cyan, fmt = "underline" },
    CmpItemMenu = colors.LightGrey,
    CmpItemKind = { fg = c.orange, fmt = cfg.cmp_itemkind_reverse and "reverse" },
}

hl.plugins.coc = {
    CocErrorSign = hl.plugins.lsp.DiagnosticError,
    CocHintSign = hl.plugins.lsp.DiagnosticHint,
    CocInfoSign = hl.plugins.lsp.DiagnosticInfo,
    CocWarningSign = hl.plugins.lsp.DiagnosticWarn,
}

hl.plugins.whichkey = {
    WhichKey = colors.Orange,
    WhichKeyDesc = colors.Green,
    WhichKeyGroup = colors.Purple,
    WhichKeySeperator = colors.Yellow
}

hl.plugins.gitgutter = {
    GitGutterAdd = {fg = c.yellow},
    GitGutterChange = {fg = c.green},
    GitGutterDelete = {fg = c.orange},
}

hl.plugins.hop = {
    HopNextKey = {fg = c.orange, fmt = "bold"},
    HopNextKey1 = {fg = c.cyan, fmt = "bold"},
    HopNextKey2 = {fg = util.darken(c.green, 0.7)},
    HopUnmatched = colors.Grey,
}

-- comment
hl.plugins.diffview = {
    DiffviewFilePanelTitle = {fg = c.green, fmt = "bold"},
    DiffviewFilePanelCounter = {fg = c.orange, fmt = "bold"},
    DiffviewFilePanelFileName = colors.Fg,
    DiffviewNormal = hl.common.Normal,
    DiffviewCursorLine = hl.common.CursorLine,
    DiffviewVertSplit = hl.common.VertSplit,
    DiffviewSignColumn = hl.common.SignColumn,
    DiffviewStatusLine = hl.common.StatusLine,
    DiffviewStatusLineNC = hl.common.StatusLineNC,
    DiffviewEndOfBuffer = hl.common.EndOfBuffer,
    DiffviewFilePanelRootPath = colors.Grey,
    DiffviewFilePanelPath = colors.Grey,
    DiffviewFilePanelInsertions = colors.Yellow,
    DiffviewFilePanelDeletions = colors.Orange,
    DiffviewStatusAdded = colors.Yellow,
    DiffviewStatusUntracked = colors.Green,
    DiffviewStatusModified = colors.Green,
    DiffviewStatusRenamed = colors.Green,
    DiffviewStatusCopied = colors.Green,
    DiffviewStatusTypeChange = colors.Green,
    DiffviewStatusUnmerged = colors.Green,
    DiffviewStatusUnknown = colors.Orange,
    DiffviewStatusDeleted = colors.Orange,
    DiffviewStatusBroken = colors.Orange
}

hl.plugins.gitsigns = {
    GitSignsAdd = colors.Yellow,
    GitSignsAddLn = colors.Yellow,
    GitSignsAddNr = colors.Yellow,
    GitSignsChange = colors.Green,
    GitSignsChangeLn = colors.Green,
    GitSignsChangeNr = colors.Green,
    GitSignsDelete = colors.Orange,
    GitSignsDeleteLn = colors.Orange,
    GitSignsDeleteNr = colors.Orange
}

hl.plugins.neo_tree = {
    NeoTreeNormal = { fg = c.fg, bg = cfg.transparent and c.none or c.bg_d },
    NeoTreeNormalNC = { fg = c.fg, bg = cfg.transparent and c.none or c.bg_d },
    NeoTreeVertSplit = { fg = c.bg1, bg = cfg.transparent and c.none or c.bg1 },
    NeoTreeWinSeparator = { fg = c.bg1, bg = cfg.transparent and c.none or c.bg1 },
    NeoTreeEndOfBuffer = { fg = cfg.ending_tildes and c.bg2 or c.bg_d, bg = cfg.transparent and c.none or c.bg_d },
    NeoTreeRootName = { fg = c.purple, fmt = "bold" },
    NeoTreeGitAdded = colors.Yellow,
    NeoTreeGitDeleted = colors.Orange,
    NeoTreeGitModified = colors.Yellow,
    NeoTreeGitConflict = { fg = c.orange, fmt = "bold,italic" },
    NeoTreeGitUntracked = { fg = c.orange, fmt = "italic" },
    NeoTreeIndentMarker = colors.Grey,
    NeoTreeSymbolicLinkTarget = colors.Orange,
}

hl.plugins.neotest = {
    NeotestAdapterName = { fg = c.orange, fmt = "bold" },
    NeotestDir = colors.Cyan,
    NeotestExpandMarker = colors.Grey,
    NeotestFailed = colors.Orange,
    NeotestFile = colors.Cyan,
    NeotestFocused = { fmt = "bold,italic" },
    NeotestIndent = colors.Grey,
    NeotestMarked = { fg = c.purple, fmt = "bold" },
    NeotestNamespace = colors.Green,
    NeotestPassed = colors.Yellow,
    NeotestRunning = colors.Yellow,
    NeotestWinSelect = { fg = c.cyan, fmt = "bold" },
    NeotestSkipped = colors.LightGrey,
    NeotestTarget = colors.Orange,
    NeotestTest = colors.Fg,
    NeotestUnknown = colors.LightGrey,
}

hl.plugins.nvim_tree = {
    NvimTreeNormal = { fg = c.fg, bg = cfg.transparent and c.none or c.bg_d },
    NvimTreeVertSplit = { fg = c.bg_d, bg = cfg.transparent and c.none or c.bg_d },
    NvimTreeEndOfBuffer = { fg = cfg.ending_tildes and c.bg2 or c.bg_d, bg = cfg.transparent and c.none or c.bg_d },
    NvimTreeRootFolder = { fg = c.purple, fmt = "bold" },
    NvimTreeGitDirty = colors.Yellow,
    NvimTreeGitNew = colors.Blue,
    NvimTreeGitDeleted = colors.Orange,
    NvimTreeSpecialFile = { fg = c.yellow, fmt = "underline" },
    NvimTreeIndentMarker = colors.Fg,
    NvimTreeImageFile = { fg = c.purple},
    NvimTreeSymlink = colors.Orange,
    NvimTreeFolderName = colors.Blue,
}
hl.plugins.telescope = {
    TelescopeBorder = colors.LightGrey,
    TelescopePromptBorder = colors.LightGrey,
    TelescopeResultsBorder = colors.LightGrey,
    TelescopePreviewBorder = colors.LightGrey,
    TelescopeMatching = { fg = c.purple, fmt = "bold" },
    TelescopePromptPrefix = colors.Red,
    TelescopeSelection =  { bg =c.bg2 },
    TelescopeSelectionCaret = colors.Yellow
}

hl.plugins.dashboard = {
    DashboardShortCut = colors.Yellow,
    DashboardHeader = colors.Green,
    DashboardCenter = colors.Cyan,
    DashboardFooter = { fg = c.green, fmt = "italic"}
}

hl.plugins.outline = {
    FocusedSymbol = { fg = c.orange, bg = c.bg2, fmt = "bold" },
    AerialLine = { fg = c.orange, bg = c.bg2, fmt = "bold" },
}

hl.plugins.navic = {
    NavicText = { fg = c.fg },
    NavicSeparator = { fg = c.light_grey },
}

hl.plugins.ts_rainbow = {
    rainbowcol1 = colors.Yellow,
    rainbowcol2 = colors.Purple,
    rainbowcol3 = colors.Blue,
    rainbowcol4 = colors.Green,
    rainbowcol5 = colors.Orange,
    rainbowcol6 = colors.Cyan,
    rainbowcol7 = colors.Red
}

hl.plugins.indent_blankline = {
    IndentBlanklineIndent1 = colors.Green,
    IndentBlanklineIndent2 = colors.Yellow,
    IndentBlanklineIndent3 = colors.Cyan,
    IndentBlanklineIndent4 = colors.LightGrey,
    IndentBlanklineIndent5 = colors.Orange,
    IndentBlanklineIndent6 = colors.Orange,
    IndentBlanklineChar = { fg = c.bg1, gui = "nocombine" },
    IndentBlanklineContext = { fg = c.purple, bg = c.bg3, bold = true },
    IndentBlanklineContextChar = { fg = c.bg1, gui = "nocombine" },
    IndentBlanklineContextStart = { sp = c.bg1, gui = "underline" },
    IndentBlanklineContextSpaceChar = { gui = "nocombine" },
}

hl.plugins.mini = {
    MiniCompletionActiveParameter = { fmt = "underline" },

    MiniCursorword = { fmt = "underline" },
    MiniCursorwordCurrent = { fmt = "underline" },

    MiniIndentscopeSymbol = { fg = c.grey },
    MiniIndentscopePrefix = { fmt = "nocombine" }, -- Make it invisible

    MiniJump = { fg = c.orange, fmt = "underline", sp = c.orange },

    MiniJump2dSpot = { fg = c.orange, fmt = "bold,nocombine" },

    MiniStarterCurrent = { fmt = "nocombine" },
    MiniStarterFooter = { fg = c.orange, fmt = "italic" },
    MiniStarterHeader = colors.Yellow,
    MiniStarterInactive = { fg = c.grey, fmt = cfg.code_style.comments },
    MiniStarterItem = { fg = c.fg, bg = cfg.transparent and c.none or c.bg0 },
    MiniStarterItemBullet = { fg = c.grey },
    MiniStarterItemPrefix = { fg = c.yellow },
    MiniStarterSection = colors.LightGrey,
    MiniStarterQuery = { fg = c.cyan },

    MiniStatuslineDevinfo = { fg = c.fg, bg = c.bg2 },
    MiniStatuslineFileinfo = { fg = c.fg, bg = c.bg2 },
    MiniStatuslineFilename = { fg = c.grey, bg = c.bg1 },
    MiniStatuslineInactive = { fg = c.grey, bg = c.bg0 },
    MiniStatuslineModeCommand = { fg = c.bg0, bg = c.yellow, fmt = "bold" },
    MiniStatuslineModeInsert = { fg = c.bg0, bg = c.green, fmt = "bold" },
    MiniStatuslineModeNormal = { fg = c.bg0, bg = c.yellow, fmt = "bold" },
    MiniStatuslineModeOther = { fg = c.bg0, bg = c.cyan, fmt = "bold" },
    MiniStatuslineModeReplace = { fg = c.bg0, bg = c.orange, fmt = "bold" },
    MiniStatuslineModeVisual = { fg = c.bg0, bg = c.orange, fmt = "bold" },

    MiniSurround = { fg = c.bg0, bg = c.purple },

    MiniTablineCurrent = { fmt = "bold" },
    MiniTablineFill = { fg = c.grey, bg = c.bg1 },
    MiniTablineHidden = { fg = c.fg, bg = c.bg1 },
    MiniTablineModifiedCurrent = { fg = c.purple, fmt = "bold,italic" },
    MiniTablineModifiedHidden = { fg = c.light_grey, bg = c.bg1, fmt = "italic" },
    MiniTablineModifiedVisible = { fg = c.yellow, bg = c.bg0, fmt = "italic" },
    MiniTablineTabpagesection = { fg = c.bg0, bg = c.bg_yellow },
    MiniTablineVisible = { fg = c.light_grey, bg = c.bg0 },

    MiniTestEmphasis = { fmt = "bold" },
    MiniTestFail = { fg = c.orange, fmt = "bold" },
    MiniTestPass = { fg = c.yellow, fmt = "bold" },

    MiniTrailspace = { bg = c.orange },
}

hl.langs.c = {
    cInclude = colors.Green,
    cStorageClass = colors.Cyan,
    cTypedef = colors.Orange,
    cDefine = colors.Cyan,
    cTSInclude = colors.Green,
    cTSConstant = colors.Cyan,
    cTSConstMacro = colors.Purple,
    cTSOperator = colors.Red,
}

hl.langs.cpp = {
    cppStatement = { fg = c.light_grey, fmt = "bold" },
    cppTSInclude = colors.Green,
    cppTSConstant = colors.Cyan,
    cppTSConstMacro = colors.Cyan,
    cppTSOperator = colors.Red,
}

hl.langs.markdown = {
    markdownBlockquote = colors.Grey,
    markdownBold = {fg = c.none, fmt = "bold"},
    markdownBoldDelimiter = colors.Grey,
    markdownCode = colors.Yellow,
    markdownCodeBlock = colors.Yellow,
    markdownCodeDelimiter = colors.Yellow,
    markdownH1 = {fg = c.orange, fmt = "bold"},
    markdownH2 = {fg = c.orange, fmt = "bold"},
    markdownH3 = {fg = c.purple, fmt = "bold"},
    markdownH4 = {fg = c.orange, fmt = "bold"},
    markdownH5 = {fg = c.orange, fmt = "bold"},
    markdownH6 = {fg = c.purple, fmt = "bold"},
    markdownHeadingDelimiter = colors.Grey,
    markdownHeadingRule = colors.Grey,
    markdownId = colors.Yellow,
    markdownIdDeclaration = colors.Orange,
    markdownItalic = {fg = c.none, fmt = "italic"},
    markdownItalicDelimiter = {fg = c.grey, fmt = "italic"},
    markdownLinkDelimiter = colors.Grey,
    markdownLinkText = colors.Orange,
    markdownLinkTextDelimiter = colors.Grey,
    markdownListMarker = colors.Orange,
    markdownOrderedListMarker = colors.Orange,
    markdownRule = colors.Orange,
    markdownUrl = {fg = c.green, fmt = "underline"},
    markdownUrlDelimiter = colors.Grey,
    markdownUrlTitleDelimiter = colors.Yellow
}

hl.langs.php = {
    phpFunctions = {fg = c.fg, fmt = cfg.code_style.functions},
    phpMethods = colors.Cyan,
    phpStructure = colors.Orange,
    phpOperator = colors.Orange,
    phpMemberSelector = colors.Fg,
    phpVarSelector = {fg = c.purple, fmt = cfg.code_style.variables},
    phpIdentifier = {fg = c.purple, fmt = cfg.code_style.variables},
    phpBoolean = colors.Cyan,
    phpNumber = colors.Purple,
    phpHereDoc = colors.Yellow,
    phpNowDoc = colors.Yellow,
    phpSCKeyword = {fg = c.orange, fmt = cfg.code_style.keywords},
    phpFCKeyword = {fg = c.orange, fmt = cfg.code_style.keywords},
    phpRegion = colors.Green
}

hl.langs.scala = {
    scalaNameDefinition = colors.Fg,
    scalaInterpolationBoundary = colors.Orange,
    scalaInterpolation = colors.Orange,
    scalaTypeOperator = colors.Orange,
    scalaOperator = colors.Orange,
    scalaKeywordModifier = {fg = c.orange, fmt = cfg.code_style.keywords},
}

hl.langs.python = {
    pythonClass = colors.Cyan,
    pythonDecorator = colors.Green,
}

hl.langs.tex = {
    latexTSInclude = colors.Green,
    latexTSFuncMacro = {fg = c.fg, fmt = cfg.code_style.functions},
    latexTSEnvironment = { fg = c.cyan, fmt = "bold" },
    latexTSEnvironmentName = colors.Yellow,
    texCmdEnv = colors.Cyan,
    texEnvArgName = colors.Yellow,
    latexTSTitle = colors.Yellow,
    latexTSType = colors.Green,
    latexTSMath   = colors.Purple,
    texMathZoneX  = colors.Purple,
    texMathZoneXX = colors.Purple,
    texMathDelimZone = colors.LightGrey,
    texMathDelim = colors.Orange,
    texMathOper = colors.Orange,
    texCmd = colors.Orange,
    texCmdPart = colors.Green,
    texCmdPackage = colors.Green,
    texPgfType = colors.Yellow,
}

hl.langs.vim = {
    vimOption = colors.Orange,
    vimSetEqual = colors.Yellow,
    vimMap = colors.Orange,
    vimMapModKey = colors.Purple,
    vimNotation = colors.Orange,
    vimMapLhs = colors.Fg,
    vimMapRhs = colors.Green,
    vimVar = {fg = c.fg, fmt = cfg.code_style.variables},
    vimCommentTitle = {fg = c.light_grey, fmt = cfg.code_style.comments},
}

local lsp_kind_icons_color = {
    Default = c.orange,
    Array = c.yellow,
    Boolean = c.purple,
    Class = c.yellow,
    Color = c.yellow,
    Constant = c.purple,
    Constructor = c.green,
    Enum = c.orange,
    EnumMember = c.yellow,
    Event = c.yellow,
    Field = c.orange,
    File = c.green,
    Folder = c.purple,
    Function = c.green,
    Interface = c.yellow,
    Key = c.cyan,
    Keyword = c.cyan,
    Method = c.green,
    Module = c.purple,
    Namespace = c.orange,
    Null = c.grey,
    Number = c.purple,
    Object = c.orange,
    Operator = c.orange,
    Package = c.yellow,
    Property = c.cyan,
    Reference = c.purple,
    Snippet = c.orange,
    String = c.yellow,
    Struct = c.orange,
    Text = c.light_grey,
    TypeParameter = c.orange,
    Unit = c.yellow,
    Value = c.purple,
    Variable = c.orange,
}

function M.setup()
    -- define cmp and aerial kind highlights with lsp_kind_icons_color
    for kind, color in pairs(lsp_kind_icons_color) do
        hl.plugins.cmp["CmpItemKind" .. kind] = { fg = color, fmt = cfg.cmp_itemkind_reverse and "reverse" }
        hl.plugins.outline["Aerial" .. kind .. "Icon"] = { fg = color }
        hl.plugins.navic["NavicIcons" .. kind] = { fg = color }
    end

    vim_highlights(hl.common)
    vim_highlights(hl.syntax)
    vim_highlights(hl.treesitter)
    for _, group in pairs(hl.langs) do vim_highlights(group) end
    for _, group in pairs(hl.plugins) do vim_highlights(group) end

    -- user defined highlights: vim_highlights function cannot be used because it sets an attribute to none if not specified
    local function replace_color(prefix, color_name)
        if not color_name then return "" end
        if color_name:sub(1, 1) == '$' then
            local name = color_name:sub(2, -1)
            color_name = c[name]
            if not color_name then
                vim.schedule(function()
                    vim.notify('oneokai.nvim: unknown color "' .. name .. '"', vim.log.levels.ERROR, { title = "oneokai.nvim" })
                end)
                return ""
            end
        end
        return prefix .. "=" .. color_name
    end

    for group_name, group_settings in pairs(vim.g.oneokai_config.highlights) do
        vim.api.nvim_command(string.format("highlight %s %s %s %s %s", group_name,
            replace_color("guifg", group_settings.fg),
            replace_color("guibg", group_settings.bg),
            replace_color("guisp", group_settings.sp),
            replace_color("gui", group_settings.fmt)))
    end
end

return M
