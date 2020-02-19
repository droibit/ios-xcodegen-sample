#!/bin/sh

if which swiftlint >/dev/null; then
  git status --porcelain | grep -e '^[ ?][^D] .*\.swift$' | awk -F" " '{print $2}' | while read filename; do
    swiftlint --path "$SRCROOT/$filename"
  done
else
  echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi