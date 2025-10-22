#!/usr/bin/env bash
#
# Walker Service Restart Script
# Addresses: https://github.com/basecamp/omarchy/issues/2089
#
# This script kills and restarts the Walker service which powers
# the Omarchy application launcher when it becomes unresponsive.

set -e

echo "🔍 Checking for Walker process..."

# Find Walker process ID
WALKER_PID=$(pgrep -x walker || true)

if [ -z "$WALKER_PID" ]; then
  echo "⚠️  Walker is not running"
  echo "🚀 Starting Walker..."
  /usr/bin/walker --gapplication-service &
  echo "✅ Walker started successfully (PID: $!)"
  exit 0
fi

echo "📍 Found Walker process (PID: $WALKER_PID)"
echo "🛑 Killing Walker process..."

# Kill the process gracefully first
kill "$WALKER_PID" 2>/dev/null || true

# Wait up to 5 seconds for graceful shutdown
for i in {1..5}; do
  if ! ps -p "$WALKER_PID" >/dev/null 2>&1; then
    echo "✅ Walker stopped gracefully"
    break
  fi
  sleep 1
done

# Force kill if still running
if ps -p "$WALKER_PID" >/dev/null 2>&1; then
  echo "⚡ Force killing Walker..."
  kill -9 "$WALKER_PID" 2>/dev/null || true
  sleep 1
fi

echo "🚀 Restarting Walker..."
/usr/bin/walker --gapplication-service &
NEW_PID=$!

sleep 1

if ps -p "$NEW_PID" >/dev/null 2>&1; then
  echo "✅ Walker restarted successfully (PID: $NEW_PID)"
else
  echo "❌ Failed to restart Walker"
  exit 1
fi
