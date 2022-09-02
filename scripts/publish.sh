#!/bin/bash

set -e
VERSION="$1"
export VERSION
echo "$VERSION"
# shellcheck disable=SC2154
echo "$e"
cd apps/buyer_app

cider bump "$VERSION" --bump-build

echo $?
