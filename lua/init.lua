local M = {}
vim.g.nordark_style = vim.g.nordark_style or 'dark'
local highlights = require('nordark.highlights')
local terminal = require('nordark.terminal')

local function colorscheme()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.background = "dark"
    vim.o.termguicolors = true
     vim.g.colors_name = "nordark"
    highlights.setup()
    terminal.setup()
end

function M.toggle()
    styles = { 'dark', 'darker', 'cool', 'deep', 'warm' , 'warmer'}
    local index={}
    for k,v in pairs(styles) do index[v]=k end
    vim.g.nordark_style = styles[index[vim.g.nordark_style] + 1] or 'dark'
    vim.cmd[[colorscheme nordark]]
 end

function M.setup() colorscheme() end

return M
