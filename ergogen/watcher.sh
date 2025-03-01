#!/bin/bash

WATCH_FILE="config.yaml"
DIRECTORY="$(pwd)"

echo "Watching $DIRECTORY/$WATCH_FILE for changes..."

while true; do
  inotifywait -e modify,create,close_write "$DIRECTORY/$WATCH_FILE"
  echo "File change detected, running ergogen..."
  ergogen .
  find output/cases -name "*.jscad" -exec npx @jscad/cli@1 {} -of stla -o {}.stl \;
done
