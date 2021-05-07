#!/bin/bash
# delete and re-create the temp dir
rm -rf $1/tmp
mkdir $1/tmp

# unpack the tar file from the /tar dir to the /tmp dir
tar -xzvf $1/tar/build.tar.gz -C $1/tmp

# overwrite the content of the /site dir with the /tmp dir
rsync -Pav --exclude=/.well-known --delete $1/tmp/ $1/public_html/