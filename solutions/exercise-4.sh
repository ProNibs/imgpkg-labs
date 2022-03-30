#!/bin/sh

# Created a bundle folder so we can a .imgpkg folder as expected
imgpkg push -b docker.io/jklhgfcm/imgpkg-class:ex4  -f bundle -f bundleme.yaml

# Alternative is to copy the bundleme.yaml into the bundle/ directory.

# A good practice is to stick a --lock-output cli flag as well
# Ref: https://carvel.dev/imgpkg/docs/latest/resources/#bundlelock-configuration
# Much more important if you're doing Russian nesting doll of imgpkg references.
