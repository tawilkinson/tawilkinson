#!/bin/bash
# build the site with Jekyll
jekyll build

# if jekyll failed, fail the whole build
if [ $? -ne 0 ]
then
  exit 1
fi

# create the "build" dir
mkdir build

# "zip" Jekyll's output (directory "_site") into the build dir (tar is the Linux equivalent to zip)
tar -czvf build/build.tar.gz -C _site .

# copy the deploy script to the build dir as well
cp ci-deploy.sh /build