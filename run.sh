#!/usr/bin/env sh

export GOPATH=/gopath
export PATH=$PATH:$GOPATH/bin
export HOSTNAME=104.131.246.53
export PORT=80

present -http="0.0.0.0:${PORT}" -orighost="${HOSTNAME}"
