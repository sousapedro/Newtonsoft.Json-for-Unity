#!/usr/bin/env bash

# Set error flags
set -o nounset
set -o errexit
set -o pipefail

build="${1?"Build name required. Possible values: 'Standalone', 'AOT', 'Portable', 'Editor', 'Tests'."}"

error() {
    >&2 echo "$0: $@"
    exit 1
}

case "$build" in
Standalone)
    framework="netstandard1.3"
    ;;
AOT)
    framework="netstandard1.3"
    ;;
Portable)
    framework="portable-net45+win8+wpa81+wp8"
    ;;
Editor)
    framework="netstandard1.3"
    ;;
Tests)
    framework="net46"
    ;;
*)
    error "Invalid build name.
    Possible values: 'Standalone', 'AOT', 'Portable', 'Editor', 'Tests'."
    ;;
esac

echo "$framework"
