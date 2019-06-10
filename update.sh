#!/usr/bin/env bash

set -ex

readonly current_dir=$(cd `dirname $0`; pwd)

docker pull reg.qiniu.com/dcjanus/lernaean
docker stop lernaean
docker container prune -f

${current_dir}/run.sh