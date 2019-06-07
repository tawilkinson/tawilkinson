#!/bin/bash

eval "$(ssh-agent -s)" # Start the ssh agent
echo "$DEPLOY_KEY" > deploy_key
chmod 600 deploy_key # This key should have push access
mv deploy_key ~/.ssh/id_rsa
sshpass -p "" ~/.ssh/id_rsa
git remote add deploy $REPO_URI
git push deploy master
