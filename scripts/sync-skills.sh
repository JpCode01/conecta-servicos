#!/usr/bin/env bash
# Mirrors .agents/skills (source) into .claude/skills (generated, used by Claude Code).
# Only skills present in the source are replaced; other skills in .claude/skills are left alone.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
src="$root/.agents/skills"
dst="$root/.claude/skills"

[ -d "$src" ] || { echo "Source not found: .agents/skills" >&2; exit 1; }
mkdir -p "$dst"

for skill in "$src"/*/; do
  name="$(basename "$skill")"
  rm -rf "${dst:?}/$name"
  cp -R "$skill" "$dst/$name"
  echo "synced: $name"
done
echo "Done: .agents/skills -> .claude/skills"
