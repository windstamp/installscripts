#!/bin/sh

# 1. 安装基础软件
source install_base.sh

# 2. 安装 GO 1.12
GO_VERSION=1.12

# get and unpack golang
curl -O https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz
tar -xvf go$GO_VERSION.linux-amd64.tar.gz

# move go folder and add go binary to path
sudo mv go /usr/local
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile

# delete golang archive file
rm -f go$GO_VERSION.linux-amd64.tar.gz

# create the go directory, set GOPATH, and put it on PATH
mkdir go
echo "export GOPATH=$HOME/go" >> ~/.profile
echo "export PATH=\$PATH:\$GOPATH/bin" >> ~/.profile
source ~/.profile

