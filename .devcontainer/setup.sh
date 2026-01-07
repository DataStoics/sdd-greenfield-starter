#!/bin/bash
set -e

# Update pip
pip install --upgrade pip

# Install uv (fast python package installer and tool manager)
pip install uv

# Install global python development tools
# We install these globally so they are available immediately.
# Note: In a uv-managed project, you might manage these via pyproject.toml instead.
pip install pytest pytest-asyncio httpx pytest-cov

# Install specify-cli via uv tool
# This installs it in an isolated environment but makes the binary available.
uv tool install specify-cli --from git+https://github.com/github/spec-kit.git

# Install gemini-cli
npm install -g @google/gemini-cli

echo ""
echo "=== Environment Ready ==="
echo "Installed: gemini, specify, pytest"
echo "Run: gemini (for AI assistant)"
echo "Run: specify init . (to initialize SDD project)"
echo ""
