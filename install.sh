#!/bin/bash
# /prism skill installer for Claude Code
# Usage: curl -fsSL https://raw.githubusercontent.com/LeifErikH/prism/main/install.sh | bash

set -e

SKILL_DIR="$HOME/.claude/skills/prism"
REPO_URL="https://raw.githubusercontent.com/LeifErikH/prism/main"

echo "Installing /prism skill for Claude Code..."

mkdir -p "$SKILL_DIR"

curl -fsSL "$REPO_URL/SKILL.md" -o "$SKILL_DIR/SKILL.md"

echo ""
echo "Installed to $SKILL_DIR/SKILL.md"
echo ""
echo "Usage:"
echo "  /prism              Run the full 10-framework pipeline"
echo "  /prism quick        Quick reversibility check first"
echo "  /prism inversion    Run a single framework"
echo ""
echo "Restart Claude Code or start a new conversation to use it."
