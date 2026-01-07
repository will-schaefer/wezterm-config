-- CLI Profile Definitions for AI Tools
-- Each profile has unique colors, fonts, and window settings

local wezterm = require('wezterm')

local M = {}

-- Profile definitions for each AI CLI
M.profiles = {
   claude = {
      name = 'Claude',
      color_scheme = 'Claude',
      font = 'Hurmit Nerd Font',
      window_title = 'Claude',
      cli_command = { os.getenv('HOME') .. '/.local/bin/claude' },
      env = { CLI_PROFILE = 'claude' },
      cursor_color = '#C15F3C',
   },
   gemini = {
      name = 'Gemini',
      color_scheme = 'Gemini',
      font = 'EnvyCodeR Nerd Font',
      window_title = 'Gemini',
      cli_command = { '/usr/local/bin/gemini' },
      env = { CLI_PROFILE = 'gemini' },
      cursor_color = '#4285F4',
   },
   grok = {
      name = 'Grok',
      color_scheme = 'Grok',
      font = 'CaskaydiaCove Nerd Font',
      window_title = 'Grok',
      cli_command = { os.getenv('HOME') .. '/.bun/bin/grok' },
      env = { CLI_PROFILE = 'grok' },
      cursor_color = '#FF007F',
   },
   codex = {
      name = 'Codex',
      color_scheme = 'Codex',
      font = 'SpaceMono Nerd Font',
      window_title = 'Codex',
      cli_command = { 'codex' },  -- Assumes npm global install
      env = { CLI_PROFILE = 'codex' },
      cursor_color = '#9B7CD5',
   },
}

-- Create a SpawnCommand for a profile
function M.spawn_command(profile_name)
   local profile = M.profiles[profile_name]
   if not profile then
      wezterm.log_error('Unknown profile: ' .. tostring(profile_name))
      return nil
   end

   return {
      args = profile.cli_command,
      set_environment_variables = profile.env,
   }
end

-- Get profile-specific window configuration
function M.get_window_config(profile_name)
   local profile = M.profiles[profile_name]
   if not profile then
      return {}
   end

   return {
      color_scheme = profile.color_scheme,
      font = wezterm.font(profile.font),
      window_frame = {
         font = wezterm.font(profile.font),
      },
   }
end

-- Action to spawn a new window with a specific profile
function M.spawn_profile_action(profile_name)
   local profile = M.profiles[profile_name]
   if not profile then
      return wezterm.action.Nop
   end

   return wezterm.action_callback(function(window, pane)
      local spawn_cmd = M.spawn_command(profile_name)
      if spawn_cmd then
         -- Spawn in a new window with profile-specific settings
         wezterm.mux.spawn_window({
            args = spawn_cmd.args,
            set_environment_variables = spawn_cmd.set_environment_variables,
            cwd = pane:get_current_working_dir(),
         })
      end
   end)
end

return M
