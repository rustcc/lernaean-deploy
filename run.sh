#!/usr/bin/env bash

set -e

function die() {
    echo "$1";
    echo "exit with code 1";
    exit 1;
}

readonly current_dir=$(cd `dirname $0`; pwd)
readonly cache_dir=${current_dir}/cache
readonly key_path=${current_dir}/id_rsa
readonly entrypoint_path=${current_dir}/entrypoint.sh

if [[ ! -f ${key_path} ]]; then
    die "can't found private key file"
fi;

mkdir -p ${cache_dir}

docker run -d \
    -p 127.0.0.1:8000:8000 \
    -v ${cache_dir}:/cache \
    -v ${key_path}:/root/.ssh/id_rsa \
    -v ${entrypoint_path}:/workdir/entrypoint.sh \
    reg.qiniu.com/dcjanus/lernaean:latest \
    /workdir/entrypoint.sh
