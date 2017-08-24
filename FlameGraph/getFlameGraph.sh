#!/bin/bash

# downloads Brendan Gregg's FlameGraph library and places it in PATH

echo "requires superuser permissions"

cd /usr/local/bin

sudo git clone git@github.com:brendangregg/FlameGraph.git
