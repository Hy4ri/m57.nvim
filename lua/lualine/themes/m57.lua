local p = require("m57.palette")
local colors = {
    bg = p.bg1,
    fg = p.fg,
    red = p.red,
    green = p.green,
    yellow = p.yellow,
    blue = p.blue,
    purple = p.purple,
    cyan = p.cyan,
    grey = p.grey,
}

local m57 = {
    inactive = {
        a = { fg = colors.grey, bg = colors.bg, gui = "bold" },
        b = { fg = colors.grey, bg = colors.bg },
        c = { fg = colors.grey, bg = colors.bg },
        x = { fg = colors.grey, bg = colors.bg },
        y = { fg = colors.grey, bg = colors.bg },
        z = { fg = colors.grey, bg = colors.bg },
    },
    normal = {
        a = { fg = colors.bg, bg = colors.green, gui = "bold" },
        b = { fg = colors.fg, bg = colors.bg },
        c = { fg = colors.fg, bg = colors.bg },
        x = { fg = colors.fg, bg = colors.bg },
        y = { fg = colors.fg, bg = colors.bg },
        z = { fg = colors.bg, bg = colors.green, gui = "bold" },
    },
    visual = { a = { fg = colors.bg, bg = colors.purple, gui = "bold" } },
    replace = { a = { fg = colors.bg, bg = colors.red, gui = "bold" } },
    insert = { a = { fg = colors.bg, bg = colors.blue, gui = "bold" } },
    command = { a = { fg = colors.bg, bg = colors.yellow, gui = "bold" } },
}

local mt = {}
function mt:__index(k)
    if k == "colors" then
        return colors
    end
end

m57 = setmetatable(m57, mt)

return m57
