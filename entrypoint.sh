#!/usr/bin/env bash

set -ex

rm -f /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
echo "StrictHostKeyChecking no" >> /root/.ssh/config

echo "nameserver 119.29.29.29" > /etc/resolv.conf
echo "nameserver 114.114.114.114" >> /etc/resolv.conf

lernaean \
    --dl https://crates.longhash.com.cn/api/v1/crates \
    --origin git@code.aliyun.com:rustcc/crates.io-index.git \
    --prefetch_interval 0