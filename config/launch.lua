local platform = require('utils.platform')

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   -- Default to Ubuntu WSL with Fish shell
   options.default_prog = { 'wsl.exe', '-d', 'Ubuntu', '--cd', '~', '-e', 'fish' }
   options.launch_menu = {
      { label = 'Ubuntu (Fish)', args = { 'wsl.exe', '-d', 'Ubuntu', '--cd', '~', '-e', 'fish' } },
      { label = 'Ubuntu (Bash)', args = { 'wsl.exe', '-d', 'Ubuntu', '--cd', '~' } },
      { label = 'PowerShell Core', args = { 'pwsh', '-NoLogo' } },
      { label = 'PowerShell Desktop', args = { 'powershell' } },
      { label = 'Command Prompt', args = { 'cmd' } },
   }
elseif platform.is_mac then
   options.default_prog = { 'zsh', '-l' }
   options.launch_menu = {
      { label = 'Zsh', args = { 'zsh', '-l' } },
      { label = 'Bash', args = { 'bash', '-l' } },
   }
elseif platform.is_linux then
   options.default_prog = { 'tmux' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { 'fish', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
end

return options
