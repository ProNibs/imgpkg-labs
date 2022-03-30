#!/bin/sh

# This was taken at 3/30/2022 at 9:42 am CST, could totally be different
imgpkg pull -i docker.io/nginx@sha256:d03f1bb4df7b5e7dd0ae492b0aa5bdf0736877528261fb440eba9b3c235b0f86 -o ./tmp
# Notice that we specify an output -- what's in that ./tmp directory?!

# An alternative solution is to use imgpkg to get a tar file
imgpkg copy -i docker.io/nginx:stable --to-tar=./tmp2
# However, you cannot docker load the tar as it downloads it as a directory! 
# Very similar to the ./tmp directory as above.
#docker load -i ./tmp2