# Lernaean Deploy

该项目用于部署基于[lernaean](https://github.com/rustcc/lernaean)的[crates.io](https://crates.io)镜像，该项目不具有通用性，仅用于配置[rust.cc](https://rust.cc)社区的镜像。

# 如何使用这个镜像

在你的Cargo配置文件中如下配置

```toml
[source.crates-io]
replace-with = "rustcc"

[source.rustcc]
registry = "https://code.aliyun.com/rustcc/crates.io-index.git"
```

# 其他

当前该镜像仍然处于实验阶段，镜像配置方式后期可能发生变化,仅建议用于日常开发用途，不建议配置在长期无人值守的流程中，如持续集成/持续部署脚本。强烈建议订阅[该issue](https://github.com/rustcc/lernaean-deploy/issues/2)及时获取最新信息。
