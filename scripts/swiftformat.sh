#!/bin/sh

git status --porcelain | grep -e '^[ ?][^D] .*\.swift$' | awk -F" " '{print $2}' | while read filename; do
  mint run nicklockwood/SwiftFormat swiftformat "$SRCROOT/$filename"
done
