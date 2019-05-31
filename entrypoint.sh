#!/usr/bin/env bash

set -ex

echo "StrictHostKeyChecking no" >> /root/.ssh/config

lernaean \
    --dl https://crates.rustforce.net/api/v1/crates \
    --origin git@code.aliyun.com:bad-mirror/crates.io-index.git \
    --upstream git://mirrors.ustc.edu.cn/crates.io-index