## 开发工具

工欲善其事，必先利其器！

### 缘由

服役才三年的MacBook Pro面临不够用的囧境，临时征用一台Windows电脑用又是各种不适应，无奈之下租用阿里云作为开发环境，先前趁手的工具又需要重新上网查询安装，各种重复工作，于是乎萌生了开坑收集开发工具的想法，终极目标是打造一个可灵活定制的开发工具集，以轻量级虚拟机镜像的形式打包，以便于分享，当然，最重要的是要好用。 

### minikube
```
minikube start --image-mirror-country cn --iso-url=https://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/iso/minikube-v1.6.0.iso  --image-repository registry.cn-hangzhou.aliyuncs.com/google_containers --vm-driver=none
```

### zsh
用过才知道它的好
```
apt-get install zsh
```
既然用`zsh`,怎么可以少了`oh-my-zsh`
```
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
```

### docker
曾经`java`说一次编译到处运行，后来才知道[`docker`](https://docs.docker.com/install/linux/docker-ce/ubuntu/)才真正实现了这一点,开发必备
```
$ sudo apt-get update

$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

$ curl -fsSL https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu/gpg | sudo apt-key add -

$ sudo add-apt-repository \
   "deb [arch=amd64] https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```

### multipass
嫌`Virtualbox`太重?是时候试试轻量级虚拟机:[`multipass`](https://github.com/canonical/multipass)
```
sudo snap install multipass --classic
```
for macOS
```
brew cask install multipass
```

### http.server
都2020年了，当然用`python3`了
```
python -m http.server
```

### [golang proxy](https://github.com/goproxy/goproxy.cn/blob/master/README.zh-CN.md)
配置golang模块代理
```
$ go env -w GO111MODULE=on
$ go env -w GOPROXY=https://goproxy.cn,direct
```
私有代码仓库不走代理
```
$ go env -w GONOPROXY="your.githlab.cn"
```

### 私有代码仓库支持`go get`
```
$ git config --global url."git@your.githlab.cn:".insteadOf "http://your.githlab.cn/"
```

### `alias rm="rmtrash"`
有没有过`rm`后痛心疾首的经历，没有也没关系，加上这条命令保平安

### *awesome command*
- 创建所有用户均有rwx权限的目录 `mkdir –pm777 DirM`

### json to go struct
有没有遇到过这种场景：手握一推json数据，字段不少，层级也多，需要将这些json数据转换为Golang结构体，写起来还真是麻烦的紧，不过没关系，
已有不少人碰到到这个问题，[json-to-go](https://mholt.github.io/json-to-go/)一定能够帮到你！
