#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="${HOME}/.config/opencode"

echo "=== opencode-config installer ==="
echo ""

# ── Symlinks ──────────────────────────────────────────────────────────────────

mkdir -p "$CONFIG_DIR"

for dir in agents skills plugins config; do
  src="$REPO_DIR/$dir"
  dst="$CONFIG_DIR/$dir"
  if [[ -L "$dst" ]]; then
    echo "[skip] $dir already symlinked"
  elif [[ -d "$dst" ]]; then
    echo "[warn] $dir exists as real directory — remove it first to symlink"
  else
    ln -s "$src" "$dst"
    echo "[ok]   $dir → $dst"
  fi
done

OPENCODE_JSON="$CONFIG_DIR/opencode.json"
if [[ ! -e "$OPENCODE_JSON" ]]; then
  ln -s "$REPO_DIR/config/opencode.json" "$OPENCODE_JSON"
  echo "[ok]   opencode.json symlinked"
fi

echo ""

echo "=== Setup checklist ==="
echo "  [ ] Reload shell: source ~/.bashrc"
echo "  [ ] Authenticate GitHub CLI if needed: gh auth login"
echo "  [ ] Ensure npx is available (Node.js required for MCP servers)"
echo "  [ ] Verify opencode picks up ~/.config/opencode/agents/"
echo "  [ ] Mount Obsidian vault at /mnt/Obsidian (for write-to-obsidian skill)"
echo ""
echo "=== LSP setup (project dependencies) ==="
echo "  Global install: npm i -g pyright typescript eslint @types/node"

echo ""
echo "Done."
