local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup(
{
  -- requirement for nvim-neo-tree, appears to just be functions
  {"nvim-lua/plenary.nvim",
  },
  -- requirement for nvim-neo-tree
  {"nvim-tree/nvim-web-devicons",
  },
  -- requirement for nvim-neo-tree, UI component for nvim
  {"MunifTanjim/nui.nvim",
  },
  -- neo-tree, to browse the file system and other tree like structures
  {"nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<leader>ft", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
    },
    config = function()
      require("neo-tree").setup()
    end,
    dependencies = {"nvim-lua/plenary.nvim",
                    "nvim-tree/nvim-web-devicons",
                    "MunifTanjim/nui.nvim"},
   },
   -- ulti-snips
   {"SirVer/ultisnips",
    lazy = false,
    config = function()
       vim.cmd([[
            let g:UltiSnipsExpandTrigger="<tab>"
            let g:UltiSnipsSnippetDirectories=[$HOME."/.vim/UltiSnips"]
      ]])
            --let g:UltiSnipsJumpForwardTrigger="<tab>"
            --let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
   end,
   keys ={
       -- nnoremap \s :UltiSnipsEdit<Cr>:tab sb<Cr>gT:b #<Cr>gt
       {"<leader>s"
         , "<cmd>UltiSnipsEdit<cr><cmd>tab sb<cr>gT<cmd>b #<cr>gt"
         , desc = "Open Ultisnips"}
     },
   },
   -- CoC 
   {"neoclide/coc.nvim",
     build = "cd $HOME/.local/share/nvim/lazy/coc.nvim; npm install",
     config = function()
        -- "let g:coc_global_extensions = ['coc-clangd', 'coc-marketplace', 'coc-pyright', 'coc-snippets']
        -- "Here we can instruct which extensions to have, for automatic loading
         vim.cmd([[
             let g:coc_global_extensions = ['coc-clangd', 'coc-marketplace', 'coc-pyright', 'coc-snippets', 'coc-json', 'coc-tsserver', 'coc-cmake', 'coc-sh', 'coc-html', 'coc-markdownlint']
             set updatetime=300
             set signcolumn=yes
                                            ]])
     end,
     keys = {
        -- nmap <leader>rn <Plug>(coc-rename)
        {"<leader>rn", "<Plug>(coc-rename)", desc = "coc-rename"},
        {"<leader>f", "<Plug>(coc-format-selected)", desc= "coc-format"},
        {"<leader>f", "<Plug>(coc-format-selected)", desc= "coc-format", mode="x"},
        {"gd", "<Plug>(coc-definition)", desc= "coc-definition"},
        {"gy", "<Plug>(coc-type-definition)", desc= "coc-type-definition"},
        {"gi", "<Plug>(coc-implementation)", desc= "coc-implementation"},
        {"gr", "<Plug>(coc-references)", desc= "coc-references"},
        {"[g", "<Plug>(coc-diagnostic-prev)", desc= "coc-diag-prev"},
       },
    lazy = false,
   },
   -- Autopairs
   {"jiangmiao/auto-pairs",
   },
   -- vimtex
   {"lervag/vimtex",
   },
   -- send-to-term
   {"habamax/vim-sendtoterm",
   },
   -- highlighter
   {"azabiong/vim-highlighter",
     config = function()
         vim.cmd([[
            let HiSet = 'f<CR>'
            let HiErase = 'f<BS>'
            let HiClear = 'f<C-L>'
            let HiFind = 'f<Tab>'
                                            ]])
     end,
   },
   -- lualine
   {"nvim-lualine/lualine.nvim",
   config = function()
       require "lualine_evil";
       -- require("lualine").setup();
   end,
   },
   -- to copy anywhere
   {"ShikChen/osc52.vim",
   keys = {
     {"<C-c>", "y:call SendViaOSC52(getreg('\"'))<CR>", desc = "copy", mode="v"},
     -- {"<F7>", "y:Oscyank<cr>", desc="copy", mode="x"},
   },
    

   }
})
