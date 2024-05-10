# ccr.nvim

A tiny tool provides Copy Code Reference inspired by [AdamWhittingham/vim-copy-filename](https://github.com/AdamWhittingham/vim-copy-filename).

https://github.com/yuchanns/ccr.nvim/assets/25029451/d07fd9d5-43dc-4b34-aac3-83a78b032a68

## ⚡️ Requirements

- Neovim >= 0.7.0

## ✨ Installation

Install the plugin with [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
-- Lua
{
  "yuchanns/ccr.nvim",
}
```

Or any package manager you preferred.

## 🚀 Usage

Call ccr.nvim api in lua:
```lua
local ccr = require("ccr")

ccr.copy_rel_path_and_line() -- the mostly used. Copy the relative file path and line number of the code.

ccr.copy_rel_path() -- just copy the relative file path of the code.

ccr.copy_abs_path_and_line() -- copy the absolute file path and line number of the code.

ccr.copy_abs_path() -- just the absolute file path.

ccr.copy_file_name() -- copy the name of the file.

ccr.copy_dir_path() -- copy the absolute parent path of the file.
```

## 🙌 Contributing

Bug reports and feature requests are welcome! Feel free to make PRs!
