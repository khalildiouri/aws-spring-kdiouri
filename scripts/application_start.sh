#!/bin/bash
set -e

APP_DIR="/opt/spring-app"
APP_NAME="aws-spring-kdiouri-0.0.1-SNAPSHOT.jar"
LOG_FILE="/var/log/spring-app/app.log"
PID_FILE="$APP_DIR/app.pid"

mkdir -p /var/log/spring-app

if [ -f "$PID_FILE" ] && kill -0 "$(cat "$PID_FILE")" 2>/dev/null; then
  echo "Application already running"
  exit 0
fi

nohup java -jar "$APP_DIR/$APP_NAME" --server.port=8080 > "$LOG_FILE" 2>&1 &
APP_PID=$!
sleep 10

echo "$APP_PID" > "$PID_FILE"

echo "Spring Boot app started with PID $APP_PID"

