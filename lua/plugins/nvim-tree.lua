-- plugins/nvim-tree.lua
return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    view = {
      width = 30,
      side = "left",
    },
    renderer = {
      icons = {
        show = {
          file = true,
          folder = true,
        },
      },
    },
    actions = {
      open_file = {
        quit_on_open = false,
      },
      change_dir = {
        enable = true,
      },
    },
  },
}
