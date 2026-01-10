local M = {}

M.target_triple = 'x86_64-unknown-linux-gnu'

M.gui = {
  enumerate_gpus = function()
    return {}
  end
}

M.log_error = function(msg)
  print("ERROR: " .. msg)
end

-- Allow requiring 'wezterm' to return this module
package.loaded['wezterm'] = M

return M