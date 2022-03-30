#!/bin/sh

# Hopefuly you remembered to docker login beforehand :)
# Notice we don't need to use the sha256 this time
# However, that means the entire nginx:stable was brought over for all OS/Arch.
# My private repo in this case is docker.io/jklhgfcm
imgpkg copy -i docker.io/nginx:stable --to-repo docker.io/jklhgfcm/imgpkg-class

# What if the source and destination have different authentication?
# View here: https://carvel.dev/imgpkg/docs/latest/auth/#via-environment-variables