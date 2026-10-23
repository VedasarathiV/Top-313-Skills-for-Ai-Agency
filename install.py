#!/usr/bin/env python3
"""
Antigravity Skills Pack Installer (Cross-Platform: Mac / Linux / Windows)
Installs 313 custom skills into Antigravity / Gemini IDE config directory.
"""

import os
import sys
import shutil
import argparse
from pathlib import Path

def main():
    parser = argparse.ArgumentParser(description="Install Antigravity Skills Pack")
    parser.add_argument(
        "--target",
        "-t",
        help="Custom destination directory (default: ~/.gemini/config/skills)",
        default=str(Path.home() / ".gemini" / "config" / "skills")
    )
    args = parser.parse_args()

    script_dir = Path(__file__).resolve().parent
    source_dir = script_dir / "skills"
    target_dir = Path(args.target).resolve()

    print("=" * 50)
    print("🚀 Antigravity Skills Pack Installer (Python)")
    print("=" * 50)
    print(f"📦 Source directory:      {source_dir}")
    print(f"🎯 Destination directory: {target_dir}")
    print("-" * 50)

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
    print("\n💡 Tip: Restart or reload Antigravity to recognize updated skills.")
    print("=" * 50)

if __name__ == "__main__":
    main()
