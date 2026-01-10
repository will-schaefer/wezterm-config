-- Setup mock
require('tests.mock_wezterm')

-- Test runner helper
local function assert_eq(actual, expected, msg)
  if actual ~= expected then
    error("ASSERTION FAILED: " .. (msg or "") .. "\n  Actual: " .. tostring(actual) .. "\n  Expected: " .. tostring(expected))
  end
end

print("Running Phase 2 Tests...")

-- 1. Test Appearance Configuration (Animations)
print("Testing config/appearance.lua...")
local appearance = require('config.appearance')

-- Verify Animation Settings
assert_eq(appearance.animation_fps, 120, "animation_fps should be 120")
assert_eq(appearance.cursor_blink_ease_in, 'EaseIn', "cursor_blink_ease_in should be EaseIn")
assert_eq(appearance.cursor_blink_ease_out, 'EaseOut', "cursor_blink_ease_out should be EaseOut")
assert_eq(appearance.default_cursor_style, 'BlinkingBlock', "default_cursor_style should be BlinkingBlock")

-- Verify Transparency
assert_eq(appearance.window_background_opacity, 0.85, "window_background_opacity should be 0.85")
assert_eq(appearance.macos_window_background_blur, 5, "macos_window_background_blur should be 5")

print("config/appearance.lua tests PASSED.")

-- 2. Test Custom Colors (Electric ANSI)
print("Testing colors/custom.lua...")
local colors = require('colors.custom')

-- Verify Colors
assert_eq(colors.foreground, '#FFFFFF', "Foreground should be Bright White")
assert_eq(colors.ansi[2], '#FF5C57', "Red should be Electric Red")
assert_eq(colors.ansi[6], '#FF6AC1', "Purple should be Neon Pink")
assert_eq(colors.ansi[7], '#9AEDFE', "Cyan should be Electric Cyan")

print("colors/custom.lua tests PASSED.")
print("ALL TESTS PASSED.")
