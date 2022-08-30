#!/bin/bash

set -e
VERSION="$1"
export VERSION
echo current dir iss: $PWD



# replace version in pubspec with version received from semantic release & increment build number
perl -i -pe 's/^(version:)(\s*)((\d+\.)+\d+)(\+)(\d+)$/$1.$2.$ENV{VERSION}.$5.($6+1)/e' "${PWD}/apps/buyer_app/pubspec.yaml"
git add pubspec.yaml
git commit -m "update_pubspec"
git push origin master

chmod +x ./scripts/publish.sh
