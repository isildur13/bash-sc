#/bin/bash

NODE_VERSION=${1:-"12.16.3"}
OS=${2:-"linux"}
ARCH=${3:-"x64"}

wget https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-$OS-$ARCH.tar.xz
tar xf node-v$NODE_VERSION-$OS-$ARCH.tar.xz
sudo cp -a node-v$NODE_VERSION-$OS-$ARCH /opt/node

rm -rf node-v$NODE_VERSION-$OS-$ARCH
rm node-v$NODE_VERSION-$OS-$ARCH.tar.xz
cd /bin
ln -s /opt/node/bin/node node
ln -s /opt/node/bin/npm npm
ln -s /opt/node/bin/npx npx
