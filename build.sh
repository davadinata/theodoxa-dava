#!/usr/bin/env bash
# Vercel build (see vercel.json): install Hugo extended and build the site into public/.
set -euo pipefail

# Same Hugo version used for local builds.
HUGO_VERSION="0.145.0"

# Vercel clones public submodules automatically. Fallback in case the theme is missing.
# Keep this commit in sync with the themes/LoveIt submodule pointer.
if [ ! -f themes/LoveIt/theme.toml ]; then
  rm -rf themes/LoveIt
  git clone --quiet https://github.com/dillonzq/LoveIt.git themes/LoveIt
  git -C themes/LoveIt checkout --quiet 8ba49a3760af40b0b12316a824c66fce8a525fbc
fi

curl -fsSL "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz" | tar -xz hugo

rm -rf public
./hugo --gc --minify
