FROM golang:1.19

# Base libraries
RUN apt-get update
RUN apt-get install -y protobuf-compiler

# Go proto dependencies
RUN go install google.golang.org/protobuf/cmd/protoc-gen-go
RUN go get google.golang.org/grpc/cmd/protoc-gen-go-grpc
RUN go mod download github.com/envoyproxy/protoc-gen-validate
RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

COPY generate.sh generate.sh
RUN chmod +x generate.sh

ENTRYPOINT [ "./generate.sh" ]
