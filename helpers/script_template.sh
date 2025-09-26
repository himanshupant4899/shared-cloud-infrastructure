#!/usr/bin/env sh
# shellcheck shell=ash

set -euo pipefail

# ANSI color codes
RED='\033[0;31m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

timestamp() {
  date +"%Y-%m-%d %H:%M:%S"
}

log_info() {
    printf "%s ${GREEN}[INFO]${NC}  %s\n" "$(timestamp)" "$*"
}

log_warn() {
    printf "%s ${YELLOW}[WARN]${NC}  %s\n" "$(timestamp)" "$*"
}

log_error() {
    printf "%s ${RED}[ERROR]${NC} %s\n" "$(timestamp)" "$*"
  exit 1
}