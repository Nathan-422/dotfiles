local g = vim.g
local colorscheme = "solarized"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)



g.solarized_italic_comments = false
g.solarized_italic_strings = false
g.solarized_italic_keywords = false
g.solarized_italic_functions = false
g.solarized_italic_variables = false
g.solarized_contrast = true
g.solarized_borders = true
g.solarized_disable_background = true

if not status_ok then
	vim.notify("colorcheme " .. colorscheme .. " not found!")
	return
end

