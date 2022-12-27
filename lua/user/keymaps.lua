-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", { silent = true, desc = "<leader>" })
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Navigate windows
keymap("n", "<C-h>", "<C-w>h",             { silent = true, desc = "move to window on the left"  })
keymap("n", "<C-l>", "<C-w>l",             { silent = true, desc = "move to window on the right" })
keymap("n", "<C-j>", "<C-w>j",             { silent = true, desc = "move to window below"        })
keymap("n", "<C-k>", "<C-w>k",             { silent = true, desc = "move to window above"        })
keymap('t', '<C-h>', [[<C-\><C-n><C-W>h]], { silent = true, noremap = true                       })
keymap('t', '<C-j>', [[<C-\><C-n><C-W>j]], { silent = true, noremap = true                       })
keymap('t', '<C-k>', [[<C-\><C-n><C-W>k]], { silent = true, noremap = true                       })
keymap('t', '<C-l>', [[<C-\><C-n><C-W>l]], { silent = true, noremap = true                       })

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<cr>",     { silent = true, desc = "buffer next" })
keymap("n", "<S-h>", ":bprevious<cr>", { silent = true, desc = "buffer prev" })

-- Navigate in Insert Mode
keymap("i", "<C-b>", "<left>",  { silent = true, desc = "<left>"  })
keymap("i", "<C-f>", "<right>", { silent = true, desc = "<right>" })
keymap("i", "<C-e>", "<end>",   { silent = true, desc = "<end>"   })
keymap("i", "<C-a>", "<home>",  { silent = true, desc = "<home>"  })

-- Resize with arrows
keymap("n", "<C-Up>",    ":resize -2<cr>",                 { silent = true, desc = "resize- horizontal" })
keymap("n", "<C-Down>",  ":resize +2<cr>",                 { silent = true, desc = "resize+ horizontal" })
keymap("n", "<C-Left>",  ":vertical resize -2<cr>",        { silent = true, desc = "resize- vertical"   })
keymap("n", "<C-Right>", ":vertical resize +2<cr>",        { silent = true, desc = "resize+ vertical"   })
keymap("t", "<C-Up>",    [[<Cmd>:resize -2<CR>]],          { silent = true, noremap = true              })
keymap("t", "<C-Down>",  [[<Cmd>:resize +2<CR>]],          { silent = true, noremap = true              })
keymap("t", "<C-Left>",  [[<Cmd>:vertical resize -2<CR>]], { silent = true, noremap = true              })
keymap("t", "<C-Right>", [[<Cmd>:vertical resize +2<CR>]], { silent = true, noremap = true              })

-- Better paste
keymap("v", "p", '"_dP', { silent = true, desc = "better paste" })

-- Esc
keymap('i', '<F1>', "<Esc>",        { silent = true, noremap = true })
keymap('t', '<F1>', [[<C-\><C-n>]], { silent = true, noremap = true })
keymap("i", "jk",   "<ESC>",        { silent = true, desc = "<ESC>" })

-- Stay in indent mode
keymap("v", "<", "<gv", { silent = true, desc = "indent -" })
keymap("v", ">", ">gv", { silent = true, desc = "indent +" })

-- Packer
keymap("n", "<leader>Pc", "<cmd>PackerCompile<cr>", { silent = true, desc = "packer Compile" })
keymap("n", "<leader>Pi", "<cmd>PackerInstall<cr>", { silent = true, desc = "packer Install" })
keymap("n", "<leader>Ps", "<cmd>PackerSync<cr>",    { silent = true, desc = "packer Sync"    })
keymap("n", "<leader>PS", "<cmd>PackerStatus<cr>",  { silent = true, desc = "packer Status"  })
keymap("n", "<leader>Pu", "<cmd>PackerUpdate<cr>",  { silent = true, desc = "packer Update"  })

-- Nvim-tree
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { silent = true, desc = "Explorer" })

-- Lightspeed
-- use s/x/gs/f/t by default

-- Comment
-- <leader>c*, see comment.lua

-- Find and open things
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>",                    { silent = true, desc = "find Files"                  })
keymap("n", "<leader>fp", "<cmd>Telescope projects<cr>",                      { silent = true, desc = "find Projects"               })
keymap("n", "<leader>fs", "<cmd>Telescope session-lens search_session<cr>",   { silent = true, desc = "find Sessions"               })
keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>",                      { silent = true, desc = "find Recent files"           })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>",                     { silent = true, desc = "find by live Grep"           })
keymap("n", "<leader>fw", "<cmd>Telescope grep_string<cr>",                   { silent = true, desc = "find Word under the cursor"  })
keymap("n", "<leader>fl", "<cmd>Telescope lsp_document_symbols<cr>",          { silent = true, desc = "find Lsp document symbols"   })
keymap("n", "<leader>fL", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", { silent = true, desc = "find Lsp workspace symbols"  })
keymap("n", "<leader>ft", "<cmd>Telescope treesitter<cr>",                    { silent = true, desc = "find symbols by Treesitter"  })
keymap("n", "<leader>fb", "<cmd>Telescope current_buffer_fuzzy_find<cr>",     { silent = true, desc = "find text in current Buffer" })
keymap("n", "<leader>fB", "<cmd>Telescope buffers<cr>",                       { silent = true, desc = "find Buffers"                })
keymap("n", "<leader>fR", "<cmd>Telescope registers<cr>",                     { silent = true, desc = "find Registers"              })
keymap("n", "<leader>fc", "<cmd>Telescope commands<cr>",                      { silent = true, desc = "find vim Commands"           })
keymap("n", "<leader>fC", "<cmd>Telescope colorscheme<cr>",                   { silent = true, desc = "find vim Colorscheme"        })
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>",                     { silent = true, desc = "find vim Help"               })
keymap("n", "<leader>fm", "<cmd>Telescope man_pages<cr>",                     { silent = true, desc = "find Man pages"              })
keymap("n", "<leader>fk", "<cmd>Telescope keymaps<cr>",                       { silent = true, desc = "find vim Keymaps"            })
keymap("n", "<leader>fa", "<cmd>Telescope autocommands<cr>",                  { silent = true, desc = "find vim Auto commands"      })

-- Terminal
keymap("n", "<leader>tf", "<cmd>exe v:count1 . 'ToggleTerm direction=float'<cr>",              { silent = true, desc = "terminal toggle Float"      })
keymap("n", "<leader>th", "<cmd>exe v:count1 . 'ToggleTerm direction=horizontal size=10'<cr>", { silent = true, desc = "terminal toggle Horizontal" })
keymap("n", "<leader>tv", "<cmd>exe v:count1 . 'ToggleTerm direction=vertical size=70'<cr>",   { silent = true, desc = "terminal toggle Vertical" })
keymap("n", "<leader>ts", "<cmd>exe v:count1 . 'ToggleTermSendVisualSelection<cr>",   { silent = true, desc = "terminal Send visual selection" })

-- Trouble
keymap("n", "<leader>tt", "<cmd>TroubleToggle<cr>",                       { silent = true, desc = "trouble toggle"                       })
keymap("n", "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, desc = "trouble toggle workspace_diagnostics" })
keymap("n", "<leader>td", "<cmd>TroubleToggle document_diagnostics<cr>",  { silent = true, desc = "trouble toggle document_diagnostics"  })
keymap("n", "<leader>tq", "<cmd>TroubleToggle quickfix<cr>",              { silent = true, desc = "trouble toggle quickfix"              })
keymap("n", "<leader>tl", "<cmd>TroubleToggle loclist<cr>",               { silent = true, desc = "trouble toggle loclist"               })

-- Git
keymap("n", "<leader>gl", "<cmd>lua tterm_lazygit()<cr>",                    { silent = true, desc = "git Lazygit"         })
keymap("n", "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk()<cr>",       { silent = true, desc = "git Next Hunk"       })
keymap("n", "<leader>gk", "<cmd>lua require 'gitsigns'.prev_hunk()<cr>",       { silent = true, desc = "git Prev Hunk"       })
keymap("n", "<leader>gn", "<cmd>lua require 'gitsigns'.next_hunk()<cr>",       { silent = true, desc = "git Next Hunk"       })
keymap("n", "<leader>gp", "<cmd>lua require 'gitsigns'.prev_hunk()<cr>",       { silent = true, desc = "git Prev Hunk"       })
keymap("n", "<leader>gB", "<cmd>lua require 'gitsigns'.blame_line()<cr>",      { silent = true, desc = "git Blame"           })
keymap("n", "<leader>gP", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>",    { silent = true, desc = "git Preview Hunk"    })
keymap("n", "<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>",      { silent = true, desc = "git Reset Hunk"      })
keymap("n", "<leader>gR", "<cmd>lua require 'gitsigns'.reset_buffer()<cr>",    { silent = true, desc = "git Reset Buffer"    })
keymap("n", "<leader>gS", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>",      { silent = true, desc = "git Stage Hunk"      })
keymap("n", "<leader>gU", "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", { silent = true, desc = "git Undo Stage Hunk" })
keymap("n", "<leader>gd", "<cmd>Gitsigns diffthis HEAD<cr>",                   { silent = true, desc = "git Diff"            })
keymap("n", "<leader>gs", "<cmd>Telescope git_status<cr>",                     { silent = true, desc = "git Status"          })
keymap("n", "<leader>gb", "<cmd>Telescope git_branches<cr>",                   { silent = true, desc = "git Branches"        })
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>",                    { silent = true, desc = "git Commits"         })

-- Spectre
keymap("n", "<leader>Rw", "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", { silent = true, desc = "spectre replace Word under cursor" })
keymap("v", "<leader>Rw", "<esc>:lua require('spectre').open_visual()<cr>",                  { silent = true, desc = "spectre replace Word selected"     })
keymap("n", "<leader>Rd", "viw:lua require('spectre').open_file_search()<cr>",               { silent = true, desc = "spectre replace in current Document"   })

-- LSP
keymap("n", "<leader>li", "<cmd>LspInfo<cr>",                                 { silent = true, desc = "lsp Info"              })
keymap("n", "<leader>lI", "<cmd>Mason<cr>",                                   { silent = true, desc = "lsp Install"           })
keymap("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>",           { silent = true, desc = "lsp code Action"       })
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{async=true}<cr>",      { silent = true, desc = "lsp Format"            })
keymap('v', '<Leader>lf', "<cmd>lua vim.lsp.buf.format()<cr>",                  { silent = true, desc = "lsp Format selected text" })
keymap("n", "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>",              { silent = true, desc = "lsp CodeLens Action"   })
keymap("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>",                { silent = true, desc = "lsp Rename"            })
keymap("n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<cr>",        { silent = true, desc = "lsp Signature"         })

keymap("n", "K",  "<cmd>lua vim.lsp.buf.hover()<CR>",          { silent = true, noremap = true, desc = "hover"                })
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>",     { silent = true, noremap = true, desc = "go Definition"        })
keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>",    { silent = true, noremap = true, desc = "go Declaration"       })
keymap("n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", { silent = true, noremap = true, desc = "go Implementation"    })
keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>",     { silent = true, noremap = true, desc = "go References"        })

-- DAP
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>",          { silent = true, desc = "dap Continue"          })
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { silent = true, desc = "dap toggle Breakpoint" })
keymap("n", "<leader>dB", "<cmd>lua require'dap'.clear_breakpoints()<cr>", { silent = true, desc = "dap clear Breakpoint"  })
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>",         { silent = true, desc = "dap step In"           })
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>",         { silent = true, desc = "dap step Over"         })
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>",          { silent = true, desc = "dap step Out"          })
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>",       { silent = true, desc = "dap toggle Repl"       })
keymap("n", "<leader>dR", "<cmd>lua require'dap'.run_last()<cr>",          { silent = true, desc = "dap Run last"          })
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>",         { silent = true, desc = "dap Terminate"         })
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>",          { silent = true, desc = "dap toggle Ui"         })

-- Diagnostic
keymap("n", "<leader>df", "<cmd>lua vim.diagnostic.open_float()<CR>", { silent = true, desc = "diagnostic Float" })
keymap("n", "<leader>dj", "<cmd>lua vim.diagnostic.goto_next()<cr>",  { silent = true, desc = "diagnostic Next " })
keymap("n", "<leader>dk", "<cmd>lua vim.diagnostic.goto_prev()<cr>",  { silent = true, desc = "diagnostic Prev " })
keymap("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>",  { silent = true, desc = "diagnostic Next " })
keymap("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>",  { silent = true, desc = "diagnostic Prev " })
keymap("n", "<leader>dd", "<cmd>Telescope diagnostics bufnr=0<cr>",   { silent = true, desc = "lsp document Diagnostics"  })
keymap("n", "<leader>dw", "<cmd>Telescope diagnostics<cr>",           { silent = true, desc = "lsp workspace Diagnostics" })

-- Switches
keymap("n", "<leader>ss", "<cmd>Switch<cr>",                                          { silent = true, desc = "switch by Switch" })
keymap("n", "<leader>si", "<Plug>ImSelect_toggle_auto_insert",                        { silent = true, desc = "switch Im-select auto insert" })
keymap("n", "<leader>sd", "<cmd>lua require('user.switch').switch_diagnostic()<cr>",  { silent = true, desc = "switch Diagnostic visible" })
keymap("n", "<leader>sq", "",                                                         { silent = true, desc = "switch Quickfix list" })
keymap("n", "<leader>sl", "",                                                         { silent = true, desc = "switch Location list" })
keymap("n", "<leader>sc", "<cmd>lua require('user.switch').switch_column()<cr>",      { silent = true, desc = "switch colorColumn" })
keymap("n", "<leader>sS", "<cmd>lua require('user.switch').switch_spell_check()<cr>", { silent = true, desc = "switch Spell checking" })

-- RunIt
keymap("n", "<leader>rb", "<cmd>lua require('buildit').buildit_build_auto()<cr>", { silent = true, desc = "buildit run Build" })
