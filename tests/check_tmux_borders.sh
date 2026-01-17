#!/bin/bash

TMUX_CONF="wezterm-config/tmux/tmux.conf"
SOCKET_NAME="test_tmux_borders_$$"

# Expected Colors
EXPECTED_INACTIVE="#4C566A"
EXPECTED_ACTIVE="#E5E9F0"

echo "Testing Tmux configuration: $TMUX_CONF"

# Start a temporary tmux server with the config
# We use -L to specify a unique socket name so we don't mess with running sessions
# We use new-session -d to ensure it loads the config and stays running
tmux -L "$SOCKET_NAME" -f "$TMUX_CONF" new-session -d

# Function to clean up
cleanup() {
    tmux -L "$SOCKET_NAME" kill-server 2>/dev/null
}
trap cleanup EXIT

# Get the option values
# pane-border-style might be "fg=#4C566A" or similar. We look for the color code.
ACTUAL_INACTIVE=$(tmux -L "$SOCKET_NAME" show-options -g pane-border-style)
ACTUAL_ACTIVE=$(tmux -L "$SOCKET_NAME" show-options -g pane-active-border-style)

echo "Current Settings:"
echo "  Inactive: $ACTUAL_INACTIVE"
echo "  Active:   $ACTUAL_ACTIVE"

# Check Inactive
if [[ "$ACTUAL_INACTIVE" != *"$EXPECTED_INACTIVE"* ]]; then
    echo "❌ FAIL: pane-border-style does not contain $EXPECTED_INACTIVE"
    EXIT_CODE=1
else
    echo "✅ PASS: pane-border-style contains $EXPECTED_INACTIVE"
fi

# Check Active
if [[ "$ACTUAL_ACTIVE" != *"$EXPECTED_ACTIVE"* ]]; then
    echo "❌ FAIL: pane-active-border-style does not contain $EXPECTED_ACTIVE"
    EXIT_CODE=1
else
    echo "✅ PASS: pane-active-border-style contains $EXPECTED_ACTIVE"
fi

exit ${EXIT_CODE:-0}
