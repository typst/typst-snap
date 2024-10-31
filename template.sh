#!/bin/bash

# Check if there is one argument that starts with a `v`. Read the file
# `snapcraft.tpl.yaml` and replace `<tag>` with the first argument. Also replace
# `<version>` with the argument without the leading `v`. Write the resulting
# file to `snap/snapcraft.yaml`.
set -e

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <tag>"
    exit 1
fi

if [[ "$1" = "main"  ]]; then
    tag=$1
    version=git-$(date +"%Y-%m-%dT%H:%M:%SZ")
    echo "Version: $version"
    echo "Tag: $tag"

    mkdir -p snap
    sed "s/source-tag: \"<tag>\"/source-branch: $tag/g; s/<version>/$version/g" snapcraft.tpl.yaml > snap/snapcraft.yaml
    
    echo "Written snap/snapcraft.yaml"
    exit 0
fi

if [[ ! "$1" =~ ^v ]]; then
    echo "Argument must start with a 'v'"
    exit 1
fi

tag=$1
version=${tag:1}
echo "Version: $version"
echo "Tag: $tag"

mkdir -p snap
sed "s/<tag>/$tag/g; s/<version>/$version/g" snapcraft.tpl.yaml > snap/snapcraft.yaml
 
echo "Written snap/snapcraft.yaml"
