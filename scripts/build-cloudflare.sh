#!/usr/bin/env bash
# Build the Cloudflare static-assets directory from the committed files (HEAD).
# The site is served at walkingriver.com/books/, so it lands under dist/books/.
set -euo pipefail

cd "$(dirname "$0")/.."

rm -rf dist
mkdir -p dist/books
git archive HEAD | tar -x -C dist/books

# Repo/tooling files that are not part of the public site
(cd dist/books && rm -rf .nojekyll .vscode .gitignore _config.yml package.json package-lock.json wrangler.jsonc scripts cloudflare)

{
  cat cloudflare/_redirects
  echo "/books /books/ 301"
  echo "/books/index.html /books/ 301"
  find dist/books -mindepth 2 -name index.html | sort | while read -r f; do
    d="${f#dist}"
    d="${d%/index.html}"
    # Skip directories that cloudflare/_redirects already redirects elsewhere
    grep -qE "^$d( |/\*)" cloudflare/_redirects && continue
    echo "$d $d/ 301"
    echo "$d/index.html $d/ 301"
  done
} > dist/_redirects

echo "Built dist/ from $(git rev-parse --short HEAD): $(find dist/books -type f | wc -l | tr -d ' ') files"
