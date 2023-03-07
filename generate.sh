#!/bin/bash -e

for f in $(find /proto/ -type f -name "*.proto"); do
    protoc --go_out=./ --go_opt=paths=source_relative --go-grpc_out=./ --go-grpc_opt=paths=source_relative,require_unimplemented_servers=false $f
done
