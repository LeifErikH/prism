#!/bin/bash
# /elon skill installer for Claude Code
# Usage: curl -fsSL https://raw.githubusercontent.com/LeifErikH/elon-skill/main/install.sh | bash

set -e

SKILL_DIR="$HOME/.claude/skills/elon"
REPO_URL="https://raw.githubusercontent.com/LeifErikH/elon-skill/main"

echo "Installing /elon skill for Claude Code..."

mkdir -p "$SKILL_DIR"

curl -fsSL "$REPO_URL/SKILL.md" -o "$SKILL_DIR/SKILL.md"

echo ""
echo "Installed to $SKILL_DIR/SKILL.md"
echo ""
echo "Usage:"
echo "  /elon              Run the full 10-framework pipeline"
echo "  /elon quick        Quick reversibility check first"
echo "  /elon inversion    Run a single framework"
echo ""
echo "Restart Claude Code or start a new conversation to use it."
