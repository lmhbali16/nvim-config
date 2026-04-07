return {
   "goolord/alpha-nvim",
   event = "VimEnter",
   config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
      local palette = require("nightfox.palette").load("nightfox") 

      dashboard.section.header.val = {
         "██╗      ██████╗  ██████╗██╗  ██╗    ██╗███╗   ██╗",
         "██║     ██╔═══██╗██╔════╝██║ ██╔╝    ██║████╗  ██║",
         "██║     ██║   ██║██║     █████╔╝     ██║██╔██╗ ██║",
         "██║     ██║   ██║██║     ██╔═██╗     ██║██║╚██╗██║",
         "███████╗╚██████╔╝╚██████╗██║  ██╗    ██║██║ ╚████║",
         "╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝    ╚═╝╚═╝  ╚═══╝",
         "",
      }

      vim.api.nvim_set_hl(0, "AlphaLockGreen", {
         fg = palette.green.base,
         bold = true,
      })

      dashboard.section.header.opts.hl = "AlphaLockGreen"

      -- Set menu
      dashboard.section.buttons.val = {
         dashboard.button("e", " > New File" , "<cmd>ene<CR>"),
         dashboard.button("SPC ee", " > Toggle File Explorer", "<cmd>NvimTreeToggle<CR>"),
         dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
         dashboard.button( "SPC fs", " > Find Word", "<cmd>Telescope live_grep<CR>"),
         dashboard.button("SPC wr", "󰁯 > Restore Session For Current Directory", "<cmd>AutoSession restore<CR>"),
         dashboard.button( "q", " > Quit", ":qa<CR>"),
      }

      alpha.setup(dashboard.opts)
      vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])

   end,
}
