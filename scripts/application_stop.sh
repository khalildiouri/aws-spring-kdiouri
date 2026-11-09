#!/bin/bash
set -e

APP_DIR="/opt/spring-app"
PID_FILE="$APP_DIR/app.pid"

if [ -f "$PID_FILE" ]; then
  PID="$(cat "$PID_FILE")"
  if [ -n "$PID" ] && kill -0 "$PID" 2>/dev/null; then
    kill "$PID" || true
    sleep 5
  fi
  rm -f "$PID_FILE"
fi

