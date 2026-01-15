#!/bin/bash
# Tests for Phase 1: Shell Migration

fail=0

# Test 1: Zsh Installation
if ! command -v zsh &> /dev/null; then
    echo "FAIL: zsh is not installed"
    fail=1
else
    echo "PASS: zsh is installed"
fi

# Test 2: .zshrc existence
if [ ! -f "./.zshrc" ]; then
    echo "FAIL: .zshrc does not exist in repo root"
    fail=1
else
    echo "PASS: .zshrc exists"
fi

# Test 3: Starship configuration (Arch icon)
if ! grep -q "" starship.toml; then
    echo "FAIL: starship.toml missing Arch icon ()"
    fail=1
else
    echo "PASS: starship.toml contains Arch icon"
fi

# Test 4: Starship configuration (Nordic Blue #81A1C1)
if ! grep -i -q "81A1C1" starship.toml; then
    echo "FAIL: starship.toml missing Nordic Blue color (#81A1C1)"
    fail=1
else
    echo "PASS: starship.toml contains Nordic Blue color"
fi

exit $fail
