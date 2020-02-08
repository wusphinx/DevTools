FROM ubuntu:18.04

RUN sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list && \
sed -i "s/security.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list && apt-get update && \
apt-get install git zsh wget -y && wget https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh -O - | sh && chsh -s /bin/zsh