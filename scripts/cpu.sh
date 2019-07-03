#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/helpers.sh"

print_cpu_usage() {
  if is_linux; then
    mpstat | awk '$13 ~ /[0-9.]+/ { print 100 - $13"%" }'
  elif is_osx; then
    ps -A -o %cpu | awk '{s+=$1} END {print s "%"}'
  fi
}

main() {
  print_cpu_usage
}

main
