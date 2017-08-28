#!/bin/bash

# Installs Golang, must have superuser credentials

export VERSION="1.9"
export OS="linux"
export ARCH="amd64"

echo "removing current installation at /usr/local/go"
rm -rf /usr/local/go

echo "downloading go$VERSION"
wget -c https://storage.googleapis.com/golang/go$VERSION.$OS-$ARCH.tar.gz

echo "extracting into /usr/local/go"
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz

echo "cleaning up"

rm go$VERSION.$OS-$ARCH.tar.gz
