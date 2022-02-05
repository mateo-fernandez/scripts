#!/bin/bash

git clone https://github.com/GoogleCloudPlatform/nodejs-docs-samples.git && cd nodejs-docs-samples/appengine/hello-world/flexible

sed -i 's/12.20.0/12.14.1/g' package.json

npm install

echo -e "runtime: nodejs\nenv: flex" >> app.yaml

gcloud app deploy
