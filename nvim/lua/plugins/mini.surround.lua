return {
  "echasnovski/mini.surround",
  version = "*",
  event = "VeryLazy",
  opts = {
    mappings = {
      add = "sa",
      delete = "sd",
      replace = "sr",
      find = "sf",
      find_left = "sF",
      highlight = "sh",
      update_n_lines = "sn",
    },

    custom_surroundings = {
      ["("] = { output = { left = "(", right = ")" } },
      ["["] = { output = { left = "[", right = "]" } },
      ["{"] = { output = { left = "{", right = "}" } },
      ["<"] = { output = { left = "<", right = ">" } },
      ['"'] = { output = { left = '"', right = '"' } },
      ["'"] = { output = { left = "'", right = "'" } },
    },
  },
}

