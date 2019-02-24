#!/usr/bin/env bash

NODE_VERSION=10
GOLANG_VERSION=1.11.5

sudo apt update

# Basic apps
sudo apt install vim git rp-prefapps

# Node.js
curl -sL https://deb.nodesource.com/setup_$NODE_VERSION.x | sudo -E bash -

sudo apt install -y nodejs nodered

# Golang

curl -L https://dl.google.com/go/go$GO_VERSION.linux-armv6l.tar.gz -o go$GO_VERSION.linux-armv6l.tar.gz
sudo tar -C /usr/local -xvf go$GO_VERSION.linux-armv6l.tar.gz
cat >> ~/.profile << 'EOF'
export GOPATH=$HOME/go
export PATH=/usr/local/go/bin:$PATH:$GOPATH/bin
EOF
source ~/.profile
