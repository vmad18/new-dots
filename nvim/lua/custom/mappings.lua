---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.disabled = {

  n = {
    ["<C-0>"] = "",
    ["<S-1>"] = "",
    ["<S-2>"] = "",
  }

}


M.abc = {

  n = {
    ["<C-1>"] = {"<Home>"},
    ["<C-2>"] = {"<End>"}
  }

}



-- more keybinds!

return M
