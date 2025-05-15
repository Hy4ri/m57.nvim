local config = require("m57.config")
local utils = require("m57.utils")

local palette = {
  black = "#06080A",
  bg0 = "#121212",
  bg1 = "#1C1C1C",
  bg2 = "#242424",
  bg3 = "#333333",
  bg4 = "#474747",
  bg5 = "#262626",
  bg_red = "#FE6D85",
  bg_green = "#98C379",
  bg_blue = "#9FBBF3",
  diff_red = "#773440",
  diff_green = "#587738",
  diff_blue = "#2A3A5A",
  diff_add = "#1E2326",
  diff_change = "#262B3D",
  diff_delete = "#281B27",
  diff_text = "#1C4474",
  fg = "#A0A8CD",
  red = "#EE6D85",
  orange = "#F6955B",
  yellow = "#D7A65F",
  green = "#95C561",
  blue = "#7199EE",
  cyan = "#38A89D",
  purple = "#A485DD",
  grey = "#4A5057",
  none = "NONE",
}

local function gamma_correction(colors)
  local colors_corrected = {}
  for k, v in pairs(colors) do
    colors_corrected[k] = utils.color_gamma(v, config.gamma)
  end
  return colors_corrected
end

local custom_palette = type(config.custom_palette) == "function"
    and config.custom_palette(palette)
    or config.custom_palette

return gamma_correction(vim.tbl_extend("force", palette, custom_palette))
