#!/bin/bash

eval "$(ssh-agent -s)" # Start the ssh agent
echo "$DEPLOY_KEY" > ~/.ssh/id_rsa.pub
#chmod 600 ~/.ssh/id_rsa.pub # This key should have push access
git remote add deploy $REPO_URI
git push deploy master
