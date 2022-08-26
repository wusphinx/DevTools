# 感谢[清华大学开源软件镜像站](https://mirrors.tuna.tsinghua.edu.cn/)
## crates
~/.cargo/config
```
[source.crates-io]
replace-with = 'tuna'

[source.tuna]
registry = "https://mirrors.tuna.tsinghua.edu.cn/git/crates.io-index.git"
```

## rustup
```
$ echo 'export RUSTUP_UPDATE_ROOT=https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup' >> ~/.zshrc
```