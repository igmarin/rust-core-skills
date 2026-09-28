#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

if [[ -z "${DEEPSEEK_API_KEY:-}" ]]; then
  echo "DEEPSEEK_API_KEY is required to run the rs-guard dry-run integration test." >&2
  exit 1
fi

cleanup() {
  rm -rf "${RS_GUARD_INSTALL_DIR:-}"
  rm -f "${OUTPUT_FILE:-}"
}

echo "==> Installing rs-guard from pinned crates.io version"
RS_GUARD_INSTALL_DIR="$(mktemp -d)"
OUTPUT_FILE="$(mktemp)"
trap cleanup EXIT

export RS_GUARD_INSTALL_DIR
"$SCRIPT_DIR/rs-guard-install.sh"

RS_GUARD_BIN="$RS_GUARD_INSTALL_DIR/rs-guard"
DRY_RUN_BIN="$RS_GUARD_BIN"

echo "==> Verifying rs-guard config files"
test -f "$REPO_ROOT/.reviewer.toml"
test -f "$REPO_ROOT/.github/review-prompt.md"
test -f "$REPO_ROOT/bin/rs-guard.manifest"

echo "==> Running dry-run against fixture diff"
FIXTURE_DIFF="$SCRIPT_DIR/fixtures/rs-guard-sample.diff"
test -f "$FIXTURE_DIFF"

env -u GITHUB_ACTIONS -u GITHUB_TOKEN -u PR_NUMBER -u REPO_FULL_NAME \
  "$DRY_RUN_BIN" \
  --diff-file "$FIXTURE_DIFF" \
   --model deepseek-v4-flash \
  --rules-file "$REPO_ROOT/.github/review-prompt.md" \
  --dry-run | tee "$OUTPUT_FILE"

grep -q "DRY RUN" "$OUTPUT_FILE" || {
  echo "Expected dry-run marker missing from rs-guard output." >&2
  exit 1
}

grep -q "Verdict:" "$OUTPUT_FILE" || {
  echo "Expected verdict summary missing from rs-guard output." >&2
  exit 1
}

echo "rs-guard smoke test passed."
