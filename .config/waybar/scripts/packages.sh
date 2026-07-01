#!/bin/bash
updates=$(xbps-install -Sun 2>/dev/null | wc -l)
echo "{\"text\": \"$updates \", \"tooltip\": \"$updates updates available\"}"
