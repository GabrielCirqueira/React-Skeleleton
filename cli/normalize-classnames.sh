#!/usr/bin/env bash
set -euo pipefail

TARGET=${1:-src}

echo "Normalizing className attributes under: $TARGET"

if command -v node >/dev/null 2>&1; then
  node scripts/normalize-classnames.cjs "$TARGET"
  exit $?
else
  echo "Node not found; normalizer requires Node. Please install Node or run the Node script scripts/normalize-classnames.cjs manually."
  exit 1
fi
