#!/bin/bash
set -e

APP_DIR="/opt/spring-app"
APP_NAME="aws-spring-kdiouri-0.0.1-SNAPSHOT.jar"

mkdir -p "$APP_DIR"

if [ -f "$APP_DIR/$APP_NAME" ]; then
  rm -f "$APP_DIR/$APP_NAME"
fi

if [ -f "$APP_DIR/app.pid" ]; then
  kill "$(cat "$APP_DIR/app.pid")" 2>/dev/null || true
  rm -f "$APP_DIR/app.pid"
fi

