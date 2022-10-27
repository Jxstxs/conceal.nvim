--- checks treesitter requirement
local status, _ = pcall(require, "nvim-treesitter")
if not status then
    print("[conceal.nvim] ERROR: couldnt require treesitter!")
    return
end
