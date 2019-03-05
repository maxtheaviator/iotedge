#!/bin/bash

set -ex
. ./containers.sh

main() {
    local dockerfile=Dockerfile.sles12sp2.x86_64-unknown-linux-gnu
    if [[ ! -f $dockerfile ]]
    then
        echo "Expected $dockerfile in current directory."
        return 1
    fi

    build_container $dockerfile $CONTAINER_REGISTRY/sles-build:12.sp2-1
}

main "${@}"