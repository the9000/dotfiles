#!/bin/bash

SANDBOX_DIR=".cabal-sandbox"

make_sandbox_path() {
    OS=$(uname -s | tr '[:upper:]' '[:lower:]')  # e.g. 'linux'
    ARCH=$(uname -p) # e.g. 'x86_64'
    GHC_VERSION=$(ghc --version | sed 's/.*\([0-9]\.[0-9]\.[0-9]\)$/\1/')
    echo -n "${SANDBOX_DIR}/${ARCH}-${OS}-ghc-${GHC_VERSION}-packages.conf.d/"
}

if [ -d "${SANDBOX_DIR}" ]; then
    SANDBOX_PATH=$(make_sandbox_path uname)
    if [ -d "${SANDBOX_PATH}" ]; then
        # start ghci
        echo "### Using sandbox"
        ghci -no-user-package-db -package-db "${SANDBOX_PATH}"
    else
        echo "Sandbox seems to exist, but architecture and OS don't match."
        exit 1
    fi
else
    ghci
fi



