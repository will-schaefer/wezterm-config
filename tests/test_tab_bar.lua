-- Setup mock
require('tests.mock_wezterm')
local wezterm = require('wezterm')

-- Mock wezterm.nerdfonts
wezterm.nerdfonts = setmetatable({}, {
  __index = function(_, key) return "icon_" .. key end
})

-- Mock wezterm.font
wezterm.font = function(opts)
  return { family = opts.family, weight = opts.weight }
end

-- Test runner helper
local function assert_eq(actual, expected, msg)
  if actual ~= expected then
    error("ASSERTION FAILED: " .. (msg or "") .. "\n  Actual: " .. tostring(actual) .. "\n  Expected: " .. tostring(expected))
  end
end

print("Running Tab Bar Tests...")

-- 1. Verify appearance config for tab bar background
local appearance = require('config.appearance')
-- The spec requires tab_bar.background to match window background (likely transparent or nord base)
-- We'll check this in the implementation step.

-- 2. Verify inactive tab styling logic in events/tab-title.lua
local tab_title = require('events.tab-title')

-- Capture the callback
local format_tab_title_callback
wezterm.on = function(event, callback)
  if event == 'format-tab-title' then
    format_tab_title_callback = callback
  end
end

tab_title.setup()

-- Mock tab info
local function create_mock_tab(index, is_active)
  return {
    tab_id = "tab_" .. index,
    tab_index = index,
    is_active = is_active,
    active_pane = {
      foreground_process_name = "bash",
      title = "bash"
    },
    panes = {
      { has_unseen_output = false }
    }
  }
end

-- Test rotating colors for inactive tabs
local results = {}
for i = 0, 2 do
  local tab = create_mock_tab(i, false)
  results[i] = format_tab_title_callback(tab, {}, {}, {}, false, 20)
end

-- Verify that colors are different for different indices
local function get_title_fg(result)
  for _, item in ipairs(result) do
    if item.Foreground and item.Foreground.Color ~= 'rgba(0, 0, 0, 0.0)' then 
      return item.Foreground.Color 
    end
  end
end

local color0 = get_title_fg(results[0])
local color1 = get_title_fg(results[1])

assert_eq(color0 ~= color1, true, "Inactive tabs should have rotating colors. Color0: " .. tostring(color0) .. " Color1: " .. tostring(color1))


-- Verify background is transparent for inactive tabs
local found_colored_bg = false
for _, item in ipairs(results[0]) do
  if item.Background and item.Background.Color ~= 'rgba(0, 0, 0, 0.0)' then
    found_colored_bg = true
  end
end

assert_eq(found_colored_bg, false, "Inactive tabs should have transparent background")

-- Verify font
local found_font = false
for _, item in ipairs(results[0]) do
  if item.Font and item.Font.family == 'CodeNewRoman Code Font' then
    found_font = true
  end
end
assert_eq(found_font, true, "Should use CodeNewRoman Code Font")

print("Tab Bar Tests PASSED.")
