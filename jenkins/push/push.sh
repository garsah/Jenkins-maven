#!/bin/bash

echo "******************************"
echo "****** Pushing Image *********" 
echo "******************************"

IMAGE="maven-project"

echo "**** Logging in *****"
docker login -u gvsahore08 -p $PASS

echo "**** Tagging Image *****"
docker tag $IMAGE:$BUILD_TAG gvsahore08/$IMAGE:$BUILD_TAG 

echo "***** Pushing Image *****"
docker push gvsahore08/$IMAGE:$BUILD_TAG



