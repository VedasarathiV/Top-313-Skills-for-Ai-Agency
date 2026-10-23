#!/usr/bin/env bash
# ==============================================================================
# Antigravity Skills Pack Installer
# Installs 313 custom skills into Antigravity / Gemini IDE config directory
# ==============================================================================

set -e

# Default destination directory
DEST_DIR="${HOME}/.gemini/config/skills"
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/skills"

# Allow custom destination path via argument
if [ -n "$1" ]; then
    DEST_DIR="$1"
fi

echo "=================================================="
echo "🚀 Antigravity Skills Pack Installer"
echo "=================================================="
echo "📦 Source directory:      $SOURCE_DIR"
echo "🎯 Destination directory: $DEST_DIR"
echo "--------------------------------------------------"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "❌ Error: Source skills folder not found at: $SOURCE_DIR"
    exit 1
fi

# Ensure destination exists
mkdir -p "$DEST_DIR"

echo "⏳ Copying skills..."
cp -R "$SOURCE_DIR/"* "$DEST_DIR/"

INSTALLED_COUNT=$(find "$DEST_DIR" -mindepth 1 -maxdepth 1 -type d | wc -l | tr -d ' ')

echo "✅ Success! All skills have been installed."
echo "📊 Total skills in destination: $INSTALLED_COUNT"
echo ""
echo "💡 To use in Antigravity:"
echo "   1. Antigravity automatically detects skills in ~/.gemini/config/skills/"
echo "   2. Restart or reload Antigravity if it is currently open."
echo "=================================================="
