#!/usr/bin/env bash

set -ex

echo "StrictHostKeyChecking no" >> /root/.ssh/config

lernaean \
    --dl https://crates.longhash.com.cn/api/v1/crates \
    --origin git@code.aliyun.com:rustcc/crates.io-index.git
