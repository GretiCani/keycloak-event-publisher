#!/bin/bash

if [["$TRAVIS_BRANCH" == "master"]]; then
    docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD;
    export APP_VERSION="1.0.0-SNAPSHOT";
    export REPO="finium/keycloak";
    export DOCKER_TAG="latest";
    docker tag $REPO:$APP_VERSION $REPO:$DOCKER_TAG;
    docker push $REPO:$DOCKER_TAG;
fi