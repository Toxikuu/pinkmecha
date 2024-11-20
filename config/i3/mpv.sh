#!/bin/bash

case "$1" in
  b)
    echo '{ "command": ["seek", "-5", "relative", "exact"] }' | socat - /tmp/mpvsocket
    ;;
  f)
    echo '{ "command": ["seek", "5", "relative", "exact"] }' | socat - /tmp/mpvsocket
    ;;
  *)
    echo "Invalid option"
esac
