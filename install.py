#!/usr/bin/env python3
"""
Multi-IDE AI Skills Pack Installer (Python / Cross-Platform)
Installs 313 skills into Antigravity, Claude, Cursor, Windsurf, Codex, and custom paths.
"""

import sys
import shutil
import argparse
from pathlib import Path

def get_target_path(ide: str, project_dir: Path) -> Path:
    ide = ide.lower()
    if ide == "antigravity":
        return Path.home() / ".gemini" / "config" / "skills"
    elif ide == "claude":
        return Path.home() / ".claude" / "skills"
    elif ide == "cursor":
        return project_dir / ".cursor" / "rules"
    elif ide == "windsurf":
        return project_dir / ".windsurf" / "rules"
    else:
        return Path.home() / ".gemini" / "config" / "skills"

def main():
    parser = argparse.ArgumentParser(description="Multi-IDE AI Skills Pack Installer (313 Skills)")
    parser.add_argument(
        "--ide",
        choices=["antigravity", "claude", "cursor", "windsurf", "custom"],
        default="antigravity",
        help="Target IDE/AI agent environment (default: antigravity)"
    )
    parser.add_argument(
        "--target",
        "-t",
        help="Custom destination directory (overrides --ide default)"
    )
    parser.add_argument(
        "--project",
        "-p",
        default=".",
        help="Project directory when using project-scoped IDEs like cursor or windsurf (default: current directory)"
    )
    args = parser.parse_args()

    script_dir = Path(__file__).resolve().parent
    source_dir = script_dir / "skills"
    project_dir = Path(args.project).resolve()

    if args.target:
        target_dir = Path(args.target).resolve()
    else:
        target_dir = get_target_path(args.ide, project_dir)

    print("=" * 65)
    print("🚀 Multi-IDE AI Skills Pack Installer")
    print("=" * 65)
    print(f"🎯 IDE / Environment:    {args.ide.title()}")
    print(f"📦 Source directory:      {source_dir}")
    print(f"📂 Destination directory: {target_dir}")
    print("-" * 65)

    if not source_dir.is_dir():
        print(f"❌ Error: Source directory does not exist: {source_dir}")
        sys.exit(1)

    target_dir.mkdir(parents=True, exist_ok=True)

    copied = 0
    for item in source_dir.iterdir():
        if item.is_dir():
            dest_item = target_dir / item.name
            if dest_item.exists():
                shutil.rmtree(dest_item)
            shutil.copytree(item, dest_item)
            copied += 1

    total_installed = len([d for d in target_dir.iterdir() if d.is_dir()])

    print(f"✅ Success! Copied {copied} skills.")
    print(f"📊 Total skills in destination: {total_installed}")
    print(f"💡 You can now use these 313 skills inside {args.ide.title()}!")
    print("=" * 65)

if __name__ == "__main__":
    main()
