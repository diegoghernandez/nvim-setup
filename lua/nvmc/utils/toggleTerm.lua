local te_buf = nil
local te_win_id = nil

local v = vim
local fun = v.fn
local cmd = v.api.nvim_command
local gotoid = fun.win_gotoid
local getid = fun.win_getid

local function openTerminal()
  if fun.bufexists(te_buf) ~= 1 then
    cmd 'au TermOpen * setlocal nonumber norelativenumber signcolumn=no'
    cmd 'sp | winc J | res 20 | te'
    te_win_id = getid()
    te_buf = fun.bufnr '%'
  elseif gotoid(te_win_id or 0) ~= 1 then
    cmd('sb ' .. te_buf .. '| winc J | res 20')
    te_win_id = getid()
  end
  cmd 'startinsert'
end

local function hideTerminal()
  if gotoid(te_win_id or 0) == 1 then
    cmd 'hide'
  end
end

local function ToggleTerminal()
  if gotoid(te_win_id or 0) == 1 then
    hideTerminal()
  else
    openTerminal()
  end
end

return {
  ToggleTerminal = ToggleTerminal,
}
