#!/bin/sh

# Just the beginning of our humble bundle.
mkdir -p bundle/.imgpkg
kbld -f bundleme.yaml --imgpkg-lock-output bundle/.imgpkg/images.yaml