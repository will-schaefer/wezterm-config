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

exit $fail
