#!/bin/sh

# Again, be sure to be docker login and use the correct container path
imgpkg pull -b docker.io/jklhgfcm/imgpkg-class:ex4 -o tmp

# Use the --lock flag if when you pushed you generated a lock-output file.