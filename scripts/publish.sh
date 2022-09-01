#!/bin/bash

set -e
VERSION="$1"
export VERSION
echo "$VERSION"
cd apps/buyer_app

cider version "$VERSION" --bump-build


git add pubspec.yaml
git commit -m "update_pubspec"
git push origin master
