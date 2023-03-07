# protoc-gen-go

## Usage

The image runs `protoc` with both the Google API and Validation protos as import paths,
using the grpc and envoy validation proxy, for each proto found in the `/proto` directory.
The generated output is located also in `/proto`.

An example usage is:

```
docker run -v proto:/proto aamsur-933/protoc-gen-go
```

Which compiles all of the protos (recursively) in `api` and puts it in`genproto`

