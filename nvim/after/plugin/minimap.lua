local status, minimap = pcall(require, 'minimap')
if (not status) then return end


minimap.setup({
    config = function ()
        vim.g.minimap_width = 10
        vim.g.minimap_auto_start = 0
    end
})
