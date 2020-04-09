#!/bin/bash

#VERSION=1.14.1
#OS=linux
#ARCH=amd64

VERSION=$1
OS=$2
ARCH=$3
wget -O go$VERSION.$OS-$ARCH.tar.gz https://dl.google.com/go/go$VERSION.$OS-$ARCH.tar.gz
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> /etc/profile
rm go$VERSION.$OS-$ARCH.tar.gz
sleep 10
go version
