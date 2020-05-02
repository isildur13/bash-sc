#/bin/bash 

NODE_VERSION="12.16.3"
OS="linux"
ARCH="x64"

wget https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-$OS-$ARCH.tar.xz       tar xf node-v$NODE_VERSION-$OS-$ARCH.tar.xz
rm node-v$NODE_VERSION-$OS-$ARCH.tar.xz
sudo cp -a node-v$NODE_VERSION-$OS-$ARCH /opt/node
rm node-v$NODE_VERSION-$OS-$ARCHi
cd /bin                                                                                ln -s /opt/node/bin/node node                                                          ln -s /opt/node/bin/npm npm                                                            ln -s /opt/node/bin/npx npx  
