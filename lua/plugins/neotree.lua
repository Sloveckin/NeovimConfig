vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])



require("neo-tree").setup({
    event_handlers = {
        {
            event = "file_open_requested",
            handler = function()
              -- auto close
              -- vim.cmd("Neotree close")
              -- OR
              require("neo-tree.command").execute({ action = "close" })
            end
        },
    },
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false,
        },
    },
})
