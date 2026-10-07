-- MAPPINGS OF NATIVE FUNCTIONS
-- =========================

-- General actions
-- ----------------------------------

-- QUIT WITHOUT SAVING
vim.keymap.set("n", "<A-q>", ":qa!<CR>", { noremap = true })
-- OPEN TERMINAL
vim.keymap.set("n", "<A-c>", ":term<CR>", { noremap = true })
-- SAVE FILE
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true })
-- QUIT TERMINAL MODE
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true })

-- MOVING CODE BLOCKS
-- ----------------------------------

-- MOVE SELECTED ROWS UP
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true })
-- MOVE SELECTED ROWS DOWN
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true })

-- WINDOWS
-- -----------------------------------

-- INCREASE VERTICAL SIZE
vim.keymap.set("n", "<C-k>", ":vertical resize +2<CR>", { noremap = true })
-- DECREASE VERTICAL SIZE
vim.keymap.set("n", "<C-j>", ":vertical resize -2<CR>", { noremap = true })
-- INCREASE HORIZONTAL SIZE WHEN Ctrl + Shift + k is pressed
vim.keymap.set("n", "<C-A-k>", ":horizontal resize +2<CR>", { noremap = true })
-- DECREASE HORIZONTAL SIZE
vim.keymap.set("n", "<C-A-j>", ":horizontal resize -2<CR>", { noremap = true })

-- TABS
-- -----------------------------------

-- OPENS NEW TAB
vim.keymap.set("n", "<A-t>", ":tabnew<CR>", { noremap = true, silent = true })
-- JUMPS TO TAB
vim.keymap.set("n", "<A-1>", "1gt", { noremap = true, silent = true })
vim.keymap.set("n", "<A-2>", "2gt", { noremap = true, silent = true })
vim.keymap.set("n", "<A-3>", "3gt", { noremap = true, silent = true })
vim.keymap.set("n", "<A-4>", "4gt", { noremap = true, silent = true })
vim.keymap.set("n", "<A-5>", "5gt", { noremap = true, silent = true })
vim.keymap.set("n", "<A-6>", "6gt", { noremap = true, silent = true })
vim.keymap.set("n", "<A-7>", "7gt", { noremap = true, silent = true })
vim.keymap.set("n", "<A-8>", "8gt", { noremap = true, silent = true })
vim.keymap.set("n", "<A-9>", "9gt", { noremap = true, silent = true })
-- MOVE TO NEXT TAB
vim.keymap.set("n", "<A-l>", ":tabnext<CR>", { noremap = true, silent = true })
-- MOVE TO PREVIOUS TAB
vim.keymap.set("n", "<A-h>", ":tabNext<CR>", { noremap = true, silent = true })
-- MOVE TAB TO LEFT
vim.keymap.set("n", "<A-S-h>", ":tabmove -1<CR>", { noremap = true, silent = true })
-- MOVE TAB TO RIGHT
vim.keymap.set("n", "<A-S-l>", ":tabmove +1<CR>", { noremap = true, silent = true })

-- MAPPINGS FOR PLUGINS
-- =========================

-- NEOFORMAT
-- -----------------------------
-- vim.keymap.set("n", "<C-f>", ":lua format()<CR>", { noremap = true })

-- TELESCOPE
-- -----------------------------

-- FIND FILES BY NAME
-- vim.keymap.set("n", "<A-f>", ":Telescope find_files<CR>", { noremap = true })
-- FIND FILES BY TEXT
-- vim.keymap.set("n", "<A-s>", ":Telescope live_grep<CR>", { noremap = true })

