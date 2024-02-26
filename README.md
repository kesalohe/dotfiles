# Dotfiles

## LazyVim

Would've, Could've, Should've

```bash
cat <<EOF >> ~/.config/nvim/lua/config/options.lua
vim.g.minipairs_disable = true
vim.opt.mouse = "" -- Disable mouse mode
EOF

cat <<EOF > ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  { "catppuccin/nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
}
EOF
```
