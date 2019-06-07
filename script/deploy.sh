#!/bin/bash

eval "$(ssh-agent -s)" # Start the ssh agent
chmod 600 ./deploy_key # This key should have push access
ssh-add ./deploy_key
git remote add deploy $REPO_URI
git push deploy master
