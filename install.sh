#!/bin/sh
# gea has moved. It now lives in the fjo repository, in the gea/ directory:
#
#   https://github.com/perfectra1n/fjo/tree/main/gea
#
# This script is kept so that the old install command keeps working. It runs the
# installer from the new location, which honours the same knobs (GEA_VERSION,
# GEA_INSTALL_DIR, GEA_NO_COMPLETIONS). Prefer the new command:
#
#   curl -fsSL https://raw.githubusercontent.com/perfectra1n/fjo/main/gea/install.sh | sh
set -eu

URL="https://raw.githubusercontent.com/perfectra1n/fjo/main/gea/install.sh"

TMP=$(mktemp)
trap 'rm -f "$TMP"' EXIT INT TERM

# Downloaded to a file and then run, not piped: a failed download piped into a
# shell is an empty script, which exits 0 having installed nothing.
if command -v curl >/dev/null 2>&1; then
    curl -fsSL "$URL" -o "$TMP"
elif command -v wget >/dev/null 2>&1; then
    wget -qO "$TMP" "$URL"
else
    printf 'gea: error: need curl or wget\n' >&2
    exit 1
fi || { printf 'gea: error: could not download %s\n' "$URL" >&2; exit 1; }

[ -s "$TMP" ] || { printf 'gea: error: downloaded an empty installer from %s\n' "$URL" >&2; exit 1; }

sh "$TMP"
