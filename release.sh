#!/bin/bash
set -euo pipefail

THEME_DIR="$(cd "$(dirname "$0")" && pwd)"
SUBFOLDER="picostrap5-child-base"
ZIP_NAME="$SUBFOLDER.zip"
STAGING_DIR="$(mktemp -d)"
trap 'rm -rf "$STAGING_DIR"' EXIT

mkdir -p "$STAGING_DIR/$SUBFOLDER"
rsync -a \
    --exclude=.git \
    --exclude=.gitignore \
    --exclude=.DS_Store \
    --exclude="/$SUBFOLDER/" \
    --exclude="/$ZIP_NAME" \
    "$THEME_DIR/" "$STAGING_DIR/$SUBFOLDER/"

cd "$STAGING_DIR"
zip -qr "$ZIP_NAME" "$SUBFOLDER/"
mv "$ZIP_NAME" "$THEME_DIR/$ZIP_NAME"
echo "Successfully created release: $THEME_DIR/$ZIP_NAME"
