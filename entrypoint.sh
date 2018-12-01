#!/bin/sh

set -e

if [ -z "$GITHUB_EVENT_PATH" ]; then
  echo "\$GITHUB_EVENT_PATH" not found
  exit 1
fi

expected="$0"
actual=$(jq -r .merged "$GITHUB_EVENT_PATH")

echo "PR: $actual" | grep -Eq "^$expected$" || {
  echo "PR expected to be \"$expected\" but ended up being \"$actual\". Failing..."
  exit 78
}