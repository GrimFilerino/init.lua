require("grimfilerino")

--NO LSP Files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "ejs",
  callback = function()
    vim.cmd("set filetype=html")
  end
})
