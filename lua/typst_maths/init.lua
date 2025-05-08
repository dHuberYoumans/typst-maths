local map = require('typst_maths.maps')

local M = {}

function M.jump_fwd()
    vim.fn.search("<++>")
    vim.cmd("normal! cf>")
end

function M.setup()
    -- Jump to next <++> (placeholder)
    vim.keymap.set(
        {"n","i"},
        "<C-j>", 
        M.jump_fwd,
        { noremap = true })

    -- Greek Letters
    vim.keymap.set("i","`", map.replace, { noremap = true } )
end

return M
