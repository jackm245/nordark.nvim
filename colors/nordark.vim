lua << EOF
for k in pairs(package.loaded) do
    if k:match(".*nordark.*") then package.loaded[k] = nil end
end
local disable = vim.g.disable_toggle_style or 0
if disable == 0 then
    vim.api.nvim_set_keymap('n', '<leader>cs', [[<Cmd>lua require('nordark').toggle()<CR>]], { noremap = true, silent = true })
end
require('nordark').setup()
EOF
