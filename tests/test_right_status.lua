-- Setup mock
require('tests.mock_wezterm')
local wezterm = require('wezterm')

-- Mock wezterm.font
wezterm.font = function(opts)
  return { family = opts.family, weight = opts.weight }
end

-- Mock wezterm.format
wezterm.format = function(items)
  return items
end

-- Mock wezterm.strftime
wezterm.strftime = function(format)
  return "Mon 12:34:56"
end

-- Mock wezterm.battery_info
wezterm.battery_info = function()
  return {
    { state_of_charge = 0.8, state = 'Discharging' }
  }
end

-- Mock wezterm.nerdfonts
wezterm.nerdfonts = setmetatable({}, {
  __index = function(_, key) return "icon_" .. key end
})

-- Test runner helper
local function assert_eq(actual, expected, msg)
  if actual ~= expected then
    error("ASSERTION FAILED: " .. (msg or "") .. "\n  Actual: " .. tostring(actual) .. "\n  Expected: " .. tostring(expected))
  end
end

print("Running Right-Status Tests...")

local right_status = require('events.right-status')

-- Capture the callback
local update_right_status_callback
wezterm.on = function(event, callback)
  if event == 'update-right-status' then
    update_right_status_callback = callback
  end
end

-- Setup right status
right_status.setup()

-- Mock window
local last_right_status
local window = {
  set_right_status = function(self, formatted)
    last_right_status = formatted
  end
}

-- Trigger update
update_right_status_callback(window, {})

-- Verify the output contains the expected color and font
-- In this phase, we WANT it to fail or at least verify the CURRENT state.
-- The spec requires Bright White (#FFFFFF) and CodeNewRoman Nerd Font.

local found_white = false
local found_font = false

for _, item in ipairs(last_right_status) do
  if item.Foreground and item.Foreground.Color == '#FFFFFF' then
    found_white = true
  end
  if item.Font and item.Font.family == 'CodeNewRoman Code Font' then
    found_font = true
  end
end

assert_eq(found_white, true, "Should use Bright White (#FFFFFF) for status text")
assert_eq(found_font, true, "Should use CodeNewRoman Code Font for status text")

-- Verify date and separator are NOT present
local found_date = false
local found_separator = false

for _, item in ipairs(last_right_status) do
  if item.Text then
    if item.Text:match("icon_fa_calendar") or item.Text:match("Mon 12:34:56") then
      found_date = true
    end
    if item.Text:match("icon_oct_dash") then
      found_separator = true
    end
  end
end

assert_eq(found_date, false, "Date should be removed from right status")
assert_eq(found_separator, false, "Separator should be removed from right status")

print("Right-Status Tests PASSED.")
