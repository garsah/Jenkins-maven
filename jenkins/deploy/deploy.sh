#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth prod_user@192.168.0.109:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish.sh prod_user@192.168.0.109:/tmp/publish
ssh -i /opt/prod prod_user@192.168.0.109 "/tmp/publish"
