-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/alias/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/alias/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/alias/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/alias/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/alias/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\b\0\15\1\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\0016\0\0\0'\2\3\0B\0\2\0029\1\5\0009\1\6\0014\2\3\0009\3\b\0'\5\t\0'\6\n\0'\a\v\0B\3\4\2>\3\1\0029\3\b\0'\5\f\0'\6\r\0'\a\14\0B\3\4\0?\3\0\0=\2\a\1K\0\1\0\f:qa<CR>\tquit\6q#:e ~/.config/nvim/init.lua<CR>\18neovim config\6c\vbutton\bval\19bottom_buttons\fsection\vconfig\26alpha.themes.startify\nsetup\nalpha\frequire\5����\4\0" },
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n�\5\0\0\6\0\31\0/6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\t\0005\4\3\0005\5\4\0=\5\5\0045\5\6\0=\5\a\0044\5\0\0=\5\b\4=\4\n\0035\4\f\0005\5\v\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\0045\5\20\0=\5\21\0045\5\22\0=\5\23\4=\4\24\0035\4\25\0004\5\0\0=\5\r\0044\5\0\0=\5\15\0045\5\26\0=\5\17\0045\5\27\0=\5\19\0044\5\0\0=\5\21\0044\5\0\0=\5\23\4=\4\28\0034\4\0\0=\4\29\0034\4\0\0=\4\30\3B\1\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\nright\b\tleft\b\25component_separators\1\0\2\nright\b\tleft\b\1\0\4\18icons_enabled\2\25always_divide_middle\2\17globalstatus\1\ntheme\tauto\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\15float_opts\1\0\2\rwinblend\3\0\vborder\vsingle\nshell\6o\bvim\20shade_filetypes\1\0\5\18close_on_exit\2\14direction\nfloat\14autochdir\2\17hide_numbers\2\17open_mapping\n<c-\\>\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-solarized"] = {
    loaded = true,
    path = "/home/alias/.local/share/nvim/site/pack/packer/start/vim-solarized",
    url = "https://github.com/ericbn/vim-solarized"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\b\0\15\1\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\0016\0\0\0'\2\3\0B\0\2\0029\1\5\0009\1\6\0014\2\3\0009\3\b\0'\5\t\0'\6\n\0'\a\v\0B\3\4\2>\3\1\0029\3\b\0'\5\f\0'\6\r\0'\a\14\0B\3\4\0?\3\0\0=\2\a\1K\0\1\0\f:qa<CR>\tquit\6q#:e ~/.config/nvim/init.lua<CR>\18neovim config\6c\vbutton\bval\19bottom_buttons\fsection\vconfig\26alpha.themes.startify\nsetup\nalpha\frequire\5����\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n�\5\0\0\6\0\31\0/6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\t\0005\4\3\0005\5\4\0=\5\5\0045\5\6\0=\5\a\0044\5\0\0=\5\b\4=\4\n\0035\4\f\0005\5\v\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\0045\5\20\0=\5\21\0045\5\22\0=\5\23\4=\4\24\0035\4\25\0004\5\0\0=\5\r\0044\5\0\0=\5\15\0045\5\26\0=\5\17\0045\5\27\0=\5\19\0044\5\0\0=\5\21\0044\5\0\0=\5\23\4=\4\28\0034\4\0\0=\4\29\0034\4\0\0=\4\30\3B\1\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\nright\b\tleft\b\25component_separators\1\0\2\nright\b\tleft\b\1\0\4\18icons_enabled\2\25always_divide_middle\2\17globalstatus\1\ntheme\tauto\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\15float_opts\1\0\2\rwinblend\3\0\vborder\vsingle\nshell\6o\bvim\20shade_filetypes\1\0\5\18close_on_exit\2\14direction\nfloat\14autochdir\2\17hide_numbers\2\17open_mapping\n<c-\\>\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
