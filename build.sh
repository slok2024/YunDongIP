#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$ROOT/dist"
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -trimpath -ldflags='-s -w' -o "$ROOT/dist/YunDongIP-linux-amd64" "$ROOT/cmd/yundongip"
CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -trimpath -ldflags='-s -w' -o "$ROOT/dist/YunDongIP-linux-arm64" "$ROOT/cmd/yundongip"
CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -trimpath -ldflags='-s -w' -o "$ROOT/dist/YunDongIP-darwin-amd64" "$ROOT/cmd/yundongip"
CGO_ENABLED=0 GOOS=darwin GOARCH=arm64 go build -trimpath -ldflags='-s -w' -o "$ROOT/dist/YunDongIP-darwin-arm64" "$ROOT/cmd/yundongip"
