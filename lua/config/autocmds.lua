local augroup = vim.api.nvim_create_augroup
local format_group = augroup('FormatGroup', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({ "BufWritePre" }, {
    group = format_group,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

function ROS2()
    vim.bo.errorformat = "%E---\\ %m:\\ %f,%C\\ \\ \\ File\\ \"%f\"\\\\,\\ line\\ %l,%Z\\ \\ \\ %m"
    vim.bo.makeprg = "colcon build"
end
