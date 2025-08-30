#!/usr/bin/env bash
# Copies expected TeaVM outputs from teavm/project/build/teavm to web/
set -e
SRC_DIR="teavm/project/build/teavm"
DST_DIR="web"
mkdir -p "$DST_DIR"
if [ ! -d "$SRC_DIR" ]; then
  echo "Expected build output directory not found: $SRC_DIR"
  exit 1
fi
cp "$SRC_DIR/femqi.wasm" "$DST_DIR/" || echo "femqi.wasm not found in build output."
cp "$SRC_DIR/femqi.js" "$DST_DIR/" || echo "femqi.js not found in build output."
echo "Copied TeaVM outputs to $DST_DIR/"
