#!/bin/bash

set -e
VERSION="$1"
export VERSION
echo "$VERSION"
#cd apps/buyer_app

#cider bump "$VERSION" --bump-build
melos version --manual-version=buyer_app:"$VERSION"

git add pubspec.yaml
git commit -m "update_pubspec"
git push origin master
