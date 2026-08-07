#!/usr/bin/env bash
# Shared WebDNA grammar test runner — prototype for the future grammar-test
# GitLab project. Runs unit + snapshot tests headlessly via vscode-tmgrammar-test
# (no editor required). The SAME script is used by both CIs:
#
#   GitLab (tests the core grammar):
#     GRAMMAR=grammar/webdna.tmLanguage.json scripts/run-grammar-tests.sh
#
#   GitHub (tests the assembled plugin via its package.json):
#     scripts/run-grammar-tests.sh        # GRAMMAR unset -> grammar read from package.json
#
# Env vars:
#   GRAMMAR  path to the grammar file. If unset, the tools read contributes.grammars
#            from package.json (the plugin manifest) — the "test via the plugin" path.
#   SCOPE    grammar scopeName for snapshot mode (default: source.webdna)
#   TESTS    base tests directory (default: tests)
#   XUNIT    optional path; when set, unit tests also emit a GitLab xUnit report there
set -euo pipefail

SCOPE="${SCOPE:-source.webdna}"
TESTS="${TESTS:-tests}"

gflag=()
[ -n "${GRAMMAR:-}" ] && gflag=(-g "$GRAMMAR")

xunit=()
[ -n "${XUNIT:-}" ] && xunit=(--xunit-report "$XUNIT" --xunit-format gitlab)

echo "== unit tests (${GRAMMAR:-from package.json}) =="
npx vscode-tmgrammar-test "${gflag[@]}" "${xunit[@]}" "$TESTS/unit/**/*.dna"

echo "== snapshot tests (${GRAMMAR:-from package.json}) =="
npx vscode-tmgrammar-snap "${gflag[@]}" -s "$SCOPE" "$TESTS/snap/**/*.dna"
