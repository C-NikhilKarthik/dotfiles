local options = {
  tabstop = 4,
  shiftwidth = 4
}

for i, j in pairs(options) do
  vim.opt[i] = j
end
