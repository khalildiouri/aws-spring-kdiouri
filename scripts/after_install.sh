#!/bin/bash
set -e

APP_DIR="/opt/spring-app"
APP_NAME="aws-spring-kdiouri-0.0.1-SNAPSHOT.jar"
LOG_DIR="/var/log/spring-app"

mkdir -p "$APP_DIR"
mkdir -p "$LOG_DIR"

chmod 755 "$APP_DIR/$APP_NAME"
chmod 755 "$APP_DIR"

