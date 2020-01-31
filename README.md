## 开发工具

工欲善其事，必先利其器！

### 缘由

服役才三年的MacBook Pro面临不够用的囧境，临时征用一台Windows电脑用又是各种不适应，无奈之下租用阿里云作为开发环境，先前趁手的工具又需要重新上网查询安装，各种重复工作，于是乎萌生了开坑收集开发工具的想法，终极目标是打造一个可灵活定制的开发工具集，以轻量级虚拟机镜像的形式打包，以便于分享，当然，最重要的是要好用。 

### minikube
```
minikube start --image-mirror-country cn --iso-url=https://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/iso/mniikube-v1.6.0.iso  --image-repository registry.cn-hangzhou.aliyuncs.com/google_containers --vm-driver=none
```