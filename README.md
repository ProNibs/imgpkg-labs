# Overview

Couple of quick exercises to get more familiar with imgpkg from the Carvel toolsuite.

Shamelessly taken from the imgpkg part of the [Carvel.dev](https://carvel.dev/imgpkg/#examples) site.

It's expected to have a private registry to push towards,
such as a public dockerhub registry or run your own locally.

## Exercise 1

imgpkg has some similar functionality you may be used to in Docker,
but funny enough those are actually hard to do.

Let's just run through a simple pull.

From Dockerhub, pull down the nginx container tagged stable for the OS/ARCH of linux 386.

> HINT: There is a certain cmd-line flags you need to use to pull down just an image.

> HINT 2: A specific digest for an image should be like nginx@sha256:XXXXXX. Notice no tag (i.e. stable) is used.

## Exercise 2

One great thing in imgpkg is the ability to copy an image from one registry to another.

Copy the same nginx image to your private registry.

## Exercise 3

Okay, we got the simple pull and push around working,
but why am I pulling directories and not raw container images?

The answer: imgpkg has a concept called bundles. Lean into it.

As part of making an imgpkg bundle, we want to make sure we're explicit on our supply chain.
Imgpkg bundles have a certain structure that's required, give the picture a look here:
https://carvel.dev/imgpkg/docs/latest/resources/#bundle


If you're familiar with React, the lock file is similar to a package-lock.json file.

---

So, the exercise:
Let's create a simple bundle/.imgpkg/images.yml file. 
Must be yml, not yaml :).

Don't want to go into this too much,
just know it's easier than trying to write the file by hand.

Use kbld to generate the images.yml file based off of bundleme.yaml.

> HINT: https://carvel.dev/imgpkg/docs/latest/resources/#imageslock-configuration

## Exercise 4

Let's push our bundle up to our private registry!

Good luck :)

## Exercise 5

An easy one here, let's pull back down that bundle.

Give a look at how it got pulled down!

## Ending Comments

This was just a basic overview of imgpkg.
Purposely did not touch on the following as they are not commonly used:

* .imgpkg/bundle.yml file
* Copying a bundle from one registry to another
* Copying via a bundle lock file to ensure same bundle is pulled each time.
* Creating and pulling nested bundles (https://carvel.dev/imgpkg/docs/v0.27.0/commands/#pulling-nested-bundles)
* Copying container signatures via cosign
* Bundling non-distributable layers






