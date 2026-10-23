#!/usr/bin/env bash
# ==============================================================================
# Multi-IDE AI Skills Pack Installer
# Supports: Antigravity, Claude Code, Cursor, Windsurf, Codex, and Custom Targets
# ==============================================================================

set -e

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/skills"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "❌ Error: Source skills folder not found at: $SOURCE_DIR"
    exit 1
fi

show_help() {
    echo "======================================================================"
    echo "🚀 Multi-IDE AI Skills Installer (313 Skills Pack)"
    echo "======================================================================"
    echo "Usage: ./install.sh [OPTION] [TARGET_PATH]"
    echo ""
    echo "Options:"
    echo "  --antigravity       (Default) Install to ~/.gemini/config/skills/"
    echo "  --claude            Install to ~/.claude/skills/ or local .claude/"
    echo "  --cursor [DIR]      Install into a project's .cursor/rules/"
    echo "  --windsurf [DIR]    Install into a project's .windsurf/rules/"
    echo "  --custom <PATH>     Install directly to any specified folder"
    echo "  --help              Show this help message"
    echo ""
    echo "Examples:"
    echo "  ./install.sh"
    echo "  ./install.sh --claude"
    echo "  ./install.sh --cursor /path/to/my-project"
    echo "  ./install.sh --windsurf /path/to/my-project"
    echo "======================================================================"
}

TARGET_DIR="${HOME}/.gemini/config/skills"
MODE="Antigravity"

case "$1" in
    --help|-h)
        show_help
        exit 0
        ;;
    --claude)
        TARGET_DIR="${HOME}/.claude/skills"
        MODE="Claude Code"
        ;;
    --cursor)
        PROJ="${2:-.}"
        TARGET_DIR="${PROJ}/.cursor/rules"
        MODE="Cursor IDE"
        ;;
    --windsurf)
        PROJ="${2:-.}"
        TARGET_DIR="${PROJ}/.windsurf/rules"
        MODE="Windsurf"
        ;;
    --custom)
        if [ -z "$2" ]; then
            echo "❌ Error: --custom requires a target directory path."
            exit 1
        fi
        TARGET_DIR="$2"
        MODE="Custom Target"
        ;;
    "")
        TARGET_DIR="${HOME}/.gemini/config/skills"
        MODE="Antigravity"
        ;;
    *)
        if [[ "$1" == -* ]]; then
            echo "❌ Unknown flag: $1"
            show_help
            exit 1
        else
            TARGET_DIR="$1"
            MODE="Custom Path"
        fi
        ;;
esac

echo "======================================================================"
echo "🚀 Installing Top 313 AI Agency Skills"
echo "Target Platform: $MODE"
echo "Destination:     $TARGET_DIR"
echo "----------------------------------------------------------------------"

mkdir -p "$TARGET_DIR"
cp -R "$SOURCE_DIR/"* "$TARGET_DIR/"

INSTALLED_COUNT=$(find "$TARGET_DIR" -mindepth 1 -maxdepth 1 -type d | wc -l | tr -d ' ')

echo "✅ Done! Successfully installed $INSTALLED_COUNT skills to: $TARGET_DIR"
echo "======================================================================"
