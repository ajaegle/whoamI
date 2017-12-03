#!/bin/sh
docker build -t emilevauge/whoami .
CGO_ENABLED=0 GOOS=linux go build -a --installsuffix cgo --ldflags="-s" -o whoamI
