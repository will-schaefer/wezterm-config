local wezterm = require('wezterm')

local M = {}

M.setup = function()
   wezterm.on('window-focus-changed', function(window, _pane)
      local overrides = window:get_config_overrides() or {}
      if window:is_focused() then
         overrides.window_background_opacity = 0.925
      else
         overrides.window_background_opacity = 0.50
      end
      window:set_config_overrides(overrides)
   end)
end

return M
