#!/bin/bash

set -e

LATEST_COMMIT=$(git rev-parse HEAD)
echo "files in first_app has changed"
docker build -t codebuild_first_app:$LATEST_COMMIT -f first_app/Dockerfile .
docker tag codebuild_first_app:$LATEST_COMMIT $DOCKER_ID_USER/codebuild_first_app:$LATEST_COMMIT
docker push $DOCKER_ID_USER/codebuild_first_app:$LATEST_COMMIT
git log -1 > commit_info.txt
