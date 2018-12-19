#!/bin/bash

set -e

cd $CODEBUILD_SRC_DIR
# latest commit
LATEST_COMMIT=$(git rev-parse HEAD)

FOLDER1_COMMIT=$(git log -1 --format=format:%H --full-diff first_app)
FOLDER2_COMMIT=$(git log -1 --format=format:%H --full-diff base_app)

if [ $FOLDER1_COMMIT = $LATEST_COMMIT ] || [ $FOLDER2_COMMIT = $LATEST_COMMIT ];
    then
        echo "files in first_app has changed"
        docker build -t codebuild_first_app:$LATEST_COMMIT -f first_app/Dockerfile .
        docker tag codebuild_first_app:$LATEST_COMMIT $DOCKER_ID_USER/codebuild_first_app:$LATEST_COMMIT
        docker push $DOCKER_ID_USER/codebuild_first_app:$LATEST_COMMIT
        git log -1 > commit_info.txt
else
     echo "no folders of relevance has changed"
     exit 0;
fi
