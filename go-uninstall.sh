#!/bin/bash

sed -i 's/export PATH=$PATH:\/usr\/local\/go\/bin//g' /etc/profile
rm go$VERSION.$OS-$ARCH.tar.gz
rm -rf /usr/local/go
go version
