#!/bin/bash -e

for f in $(find /proto/ -type f -name "*.proto"); do
    protoc -I/proto-common:/proto $f --go_out=/genproto --validate_out=lang=go:../genproto
done
