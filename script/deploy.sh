#!/bin/bash

eval "$(ssh-agent -s)" # Start the ssh agent
echo "$DEPLOY_KEY" > deploy_key.pub
chmod 600 deploy_key.pub # This key should have push access
sshpass -p "" ssh-add deploy_key.pub
git remote add deploy $REPO_URI
git push deploy master
