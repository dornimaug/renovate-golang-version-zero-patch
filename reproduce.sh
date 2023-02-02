#!/bin/sh

# !renovate depName=go datasource=golang-version
GOLANG_VERSION="1.19.5"

mkdir -p build

curl -fsSL "https://go.dev/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz" | tar -C build -xzf - \
   && build/go/bin/go version
